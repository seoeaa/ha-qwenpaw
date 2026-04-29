# Install QwenPaw on Home Assistant

Install QwenPaw AI assistant as a Home Assistant add-on from the community repository.

## Prerequisites

- Home Assistant OS (amd64 or aarch64)
- ~2GB free disk space
- 500MB-1GB free RAM
- SSH access to HA (any SSH add-on)

## Steps

### 1. Add the repository

In Home Assistant UI: **Settings → Add-ons → Add-on Store → ⋮ → Add repository**

Paste: `https://github.com/seoeaa/ha-qwenpaw`

### 2. Install QwenPaw

After adding the repository, QwenPaw appears in the add-on list. Click **Install**.

First install downloads the official QwenPaw Docker image (~2GB) and builds the add-on. This takes several minutes.

### 3. Start QwenPaw

Click **Start**. Wait for the add-on to become healthy (check via button "Open Web UI" or logs).

### 4. Configure LLM provider

1. Click **Open Web UI** on the QwenPaw add-on card
2. Go to **Settings → Models**
3. Select a provider (OpenAI, Qwen/DashScope, Gemini, Ollama, etc.)
4. Enter API Key
5. Enable the provider and select a model

### 5. Verify

Open `http://<HA_IP>:8088/` — you should see the QwenPaw Console with a chat interface.

## Files created on HA

```
/addons/qwenpaw/
├── config.yaml     # Add-on metadata
├── Dockerfile      # Based on agentscope/qwenpaw:latest
└── run.sh          # Entry point with /share/ workspace mapping
```

## Workspace access

QwenPaw stores data in `/share/qwenpaw/`. Accessible via SSH from any add-on:

```bash
ls /share/qwenpaw/working/workspaces/default/
cat /share/qwenpaw/working/config.json
```

## Management via SSH

```bash
ha addons info local_qwenpaw      # Status
ha addons logs local_qwenpaw       # Logs
ha addons restart local_qwenpaw    # Restart
ha addons rebuild local_qwenpaw    # Rebuild (updates run.sh only)
```

## Updating

To update to a new QwenPaw version:

1. Edit `/addons/qwenpaw/Dockerfile`: change `FROM agentscope/qwenpaw:<new-tag>`
2. Edit `/addons/qwenpaw/config.yaml`: bump `version`
3. Reinstall: `ha addons uninstall local_qwenpaw && ha supervisor reload && ha addons install local_qwenpaw && ha addons start local_qwenpaw`

Note: `rebuild` does NOT update config.yaml metadata. Full uninstall+install cycle is required.

## Troubleshooting

### Add-on won't start
Check logs: `ha addons logs local_qwenpaw | tail -50`

### Web UI not accessible
Check health: `curl http://172.30.33.5:8088/api/agent/health`
Expected: `{"status":"healthy","mode":"daemon_thread","runner":"ready"}`

### Docker image download fails (blocked)
Use alternative registry: edit Dockerfile, replace `FROM agentscope/qwenpaw:latest` with:
`FROM agentscope-registry.ap-southeast-1.cr.aliyuncs.com/agentscope/qwenpaw:latest`

### Supervisor doesn't see config.yaml changes
Supervisor caches config at install time. Apply changes:
```bash
ha addons uninstall local_qwenpaw
ha supervisor reload
ha addons install local_qwenpaw
```
