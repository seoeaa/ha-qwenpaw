# QwenPaw for Home Assistant

[QwenPaw](https://github.com/agentscope-ai/QwenPaw) — open-source персональный AI-ассистент от AgentScope (Alibaba). Поддерживает любые LLM (OpenAI, Qwen, Gemini, Ollama) и каналы связи (Telegram, Discord, DingTalk и др.).

## Установка

1. В Home Assistant: **Настройки → Дополнения → Магазин → ⋮ → Добавить репозиторий**
2. Вставить URL: `https://github.com/seoeaa/ha-qwenpaw`
3. QwenPaw появится в списке дополнений — нажмите **Установить**
4. После установки нажмите **Запустить**

Первый запуск займёт несколько минут (скачивание Docker image ~2ГБ).

## Настройка

1. Нажмите **Open Web UI** в карточке QwenPaw
2. **Settings → Models** — выберите провайдера и введите API Key
3. Готово!

## Возможности

- Память и персонализация агента
- 17+ встроенных навыков: cron, PDF/Office, news, browser, email, multi-agent
- Multi-agent — несколько агентов с разными ролями
- Множество каналов: Telegram, Discord, DingTalk, Feishu, WeChat и др.
- Многоуровневая безопасность (Tool Guard, file access guard)

## Доступ

- **Web UI**: `http://<IP_HA>:8088/`
- Кнопка **Open Web UI** в карточке дополнения

## Workspace

Данные QwenPaw хранятся в `/share/qwenpaw/` и доступны по SSH из других add-on:

```bash
# Список файлов workspace
ls /share/qwenpaw/working/workspaces/default/
```
