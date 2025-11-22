# Bulk webhook sender (local)

This repo includes a script to send the filename for each file inside `lib/models/model_files/tasks` to a webhook endpoint or the DeepSeek chat API, save and clean the response, and optionally write the response back to the original file.

## Usage

1. Make script executable:

```bash
chmod +x ./scripts/send_webhooks.sh
```

2. Run the script (default webhook is the one you provided). The script has been upgraded to support the DeepSeek API; set `DEEPSEEK_API_KEY` to use it:

```bash
./scripts/send_webhooks.sh
```

3. Or run with a custom webhook URL via environment variable. To use DeepSeek, supply `DEEPSEEK_API_KEY` (defaults to the key present in the script file if not set). Note: it's safer to set the env var than to rely on the default.

```bash
# Use original webhook URL (existing endpoint behaviour)
WEBHOOK_URL="https://your-webhook.example.com/abcd" ./scripts/send_webhooks.sh

# OR use DeepSeek API (recommended):
DEEPSEEK_API_KEY="sk-..." ./scripts/send_webhooks.sh
```

Responses are saved in the `webhook_responses/` directory as `<filename>.response.txt`. The script will also create backups of original files under `webhook_backups/` before overwriting them.

## Notes & safety

- The script sends the filename only (e.g. `image_item.dart`) as part of a JSON user message to DeepSeek. It will not send the file contents.
- The script only uses files directly under `lib/models/model_files` and ignores subdirectories.
- If a call fails after retries, the error output is saved to `<filename>.response.txt.error`.
- This will perform outbound HTTP requests. Only run if you want the traffic and you trust the configured webhook URL and/or DeepSeek API key.

## Concurrency & Retries

- The script runs up to 50 requests in parallel (configurable using `PARALLEL` env var).
- Each file is retried up to 3 times on failure with exponential backoff.

## Notes & safety

- The script will overwrite the original file with the response content from DeepSeek after unescaping `\n` sequences and stripping simple markdown code fences. A backup of the original file will be saved.
- Use a secure means to manage the `DEEPSEEK_API_KEY` (for example, environment secrets). Avoid committing API keys to the repository.
