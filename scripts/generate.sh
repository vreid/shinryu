#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [ -f .env ]; then
    set -a; source .env; set +a
fi

if [ -z "${NANO_GPT_API_KEY:-}" ]; then
    echo "Error: NANO_GPT_API_KEY not found. Create a .env with NANO_GPT_API_KEY=..."
    exit 1
fi

if ! command -v jq &>/dev/null; then
    echo "Error: jq is required (https://jqlang.github.io/jq/)"
    exit 1
fi

if ! command -v curl &>/dev/null; then
    echo "Error: curl is required"
    exit 1
fi

API_URL="https://nano-gpt.com/api/v1/chat/completions"
MODEL="deepseek/deepseek-v4-pro"

latest=0
for f in chapter[0-9]*.md; do
    [ -f "$f" ] || continue
    n=$(echo "$f" | grep -oE '[0-9]+')
    [ "${n:-0}" -gt "$latest" ] && latest=$n
done

if [ "$latest" -eq 0 ]; then
    echo "Error: No chapter files found in $SCRIPT_DIR"
    exit 1
fi

next=$((latest + 1))
prev=$((latest - 1))

echo "  model:    $MODEL"
echo "  latest:   chapter ${latest}"
echo "  output:   chapter ${next}"
echo ""

lore=""
if [ -f lore-updated.md ]; then
    lore=$(cat lore-updated.md)
else
    echo "Warning: lore-updated.md not found"
fi

instructions=""
if [ -f generate-chapter.md ]; then
    instructions=$(cat generate-chapter.md)
else
    echo "Error: generate-chapter.md not found"
    exit 1
fi

latest_chapter=$(cat "chapter${latest}.md")

if [ "$prev" -gt 0 ] && [ -f "chapter${prev}.md" ]; then
    prev_chapter=$(cat "chapter${prev}.md")
    user_msg="${lore}

---

PREVIOUS CHAPTER (chapter ${prev}):

${prev_chapter}

---

LATEST CHAPTER (chapter ${latest}):

${latest_chapter}

---

Using the lore, the instructions, and the two chapters above, generate the next chapter (chapter ${next}) now."
else
    user_msg="${lore}

---

LATEST CHAPTER (chapter ${latest}):

${latest_chapter}

---

Using the lore, the instructions, and the chapter above, generate the next chapter (chapter ${next}) now."
fi

echo "Building payload..."
payload=$(jq -n \
    --arg model "$MODEL" \
    --arg instructions "$instructions" \
    --arg user_msg "$user_msg" \
    '{
        model: $model,
        messages: [
            { role: "system", content: $instructions },
            { role: "user",   content: $user_msg }
        ],
        temperature: 0.75,
        max_tokens: 16000,
        stream: false
    }')

payload_bytes=$(echo "$payload" | wc -c)
echo "Payload: ${payload_bytes} bytes"
echo "Calling API (this may take a few minutes)..."

http_code=$(mktemp)
response=$(curl -sS -w "%{http_code}" -o "$http_code" \
    -X POST "$API_URL" \
    -H "Authorization: Bearer $NANO_GPT_API_KEY" \
    -H "Content-Type: application/json" \
    -d "$payload" 2>/dev/null || true)

if [ "$response" -ge 400 ] 2>/dev/null; then
    echo "HTTP ${response}"
    cat "$http_code"
    echo ""
    rm -f "$http_code"
    exit 1
fi

body=$(cat "$http_code")
rm -f "$http_code"

if echo "$body" | jq -e '.error' >/dev/null 2>&1; then
    echo "API error:"
    echo "$body" | jq '.error'
    exit 1
fi

content=$(echo "$body" | jq -r '.choices[0].message.content')

if [ -z "$content" ] || [ "$content" = "null" ]; then
    echo "Error: empty response"
    echo "$body" | jq '.' 2>/dev/null || echo "$body"
    exit 1
fi

output="chapter${next}.md"
printf '%s\n' "$content" > "$output"

if [ "$(wc -l < "$output" 2>/dev/null || echo 0)" -eq 0 ]; then
    echo "Error: wrote empty file"
    exit 1
fi

usage=$(echo "$body" | jq -r '.usage | "prompt: \(.prompt_tokens // "?"), completion: \(.completion_tokens // "?"), total: \(.total_tokens // "?")"' 2>/dev/null || echo "usage: N/A")

echo ""
echo "Done. chapter${next}.md written."
echo "Tokens: ${usage}"
