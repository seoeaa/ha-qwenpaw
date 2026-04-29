# QwenPaw for Home Assistant

![QwenPaw](qwenpaw/icon.png)

[QwenPaw](https://github.com/agentscope-ai/QwenPaw) — open-source personal AI assistant by AgentScope (Alibaba). Supports any LLM (OpenAI, Qwen, Gemini, Ollama) and messaging channels (Telegram, Discord, DingTalk, and more).

## Screenshot

![QwenPaw in Home Assistant](screenshot.jpg)

## Features

- Memory & personalization — the agent remembers context and evolves over time
- 17+ built-in skills: cron, PDF/Office, news, browser, email, multi-agent
- Multi-agent — create multiple agents with different roles
- Multiple channels: Telegram, Discord, DingTalk, Feishu, WeChat, SIP, MQTT, and more
- Multi-layer security (Tool Guard, file access guard, skill scanning)

## Installation

### Via HA UI

1. Go to **Settings → Add-ons → Add-on Store → ⋮ → Add repository**
2. Paste: `https://github.com/seoeaa/ha-qwenpaw`
3. QwenPaw will appear in the add-on list — click **Install**
4. After installation click **Start**

First run takes a few minutes (downloading Docker image ~2GB).

### Quick install link

[![Open your Home Assistant instance and add this repository](https://my.home-assistant.io/badges/supervisor_store.svg)](https://my.home-assistant.io/redirect/supervisor_store/?repository_url=https%3A%2F%2Fgithub.com%2Fseoeaa%2Fha-qwenpaw)

## Setup

1. Click **Open Web UI** on the QwenPaw add-on card
2. Go to **Settings → Models**
3. Select a provider (OpenAI, Qwen/DashScope, Gemini, Ollama, etc.)
4. Enter your API Key and enable the provider

## Access

| Method | URL |
|--------|-----|
| Web UI (LAN) | `http://<HA_IP>:8088/` |
| Add-on button | "Open Web UI" button on the QwenPaw card |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `qwenpaw_port` | 8088 | Web UI port |
| `auth_enabled` | false | Enable authentication for Web UI |

## Workspace data

QwenPaw workspace is stored in `/share/qwenpaw/` — accessible via SSH from any add-on.

```bash
ls /share/qwenpaw/working/workspaces/default/
```

## Links

- [QwenPaw Repository](https://github.com/agentscope-ai/QwenPaw) — upstream project
- [QwenPaw Documentation](https://qwenpaw.agentscope.io/) — official docs
