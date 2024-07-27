#!/bin/bash
WEBHOOK_URL="https://discord.com/api/webhooks/<Your webhook url>"
PAYLOAD=" { \"content\": \"\`$HOSTNAME\`: \`$USER\` logged in (Info: \`$SSH_CONNECTION\`).\" }"
# Let's only perform a request if there is an actual payload to send.
if [ -n "$PAYLOAD" ] && [ -n "$SSH_CONNECTION" ]; then
     curl -X POST -H 'Content-Type: application/json' -d "$PAYLOAD" "$WEBHOOK_URL"
fi
