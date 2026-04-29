# QwenPaw для Home Assistant

![QwenPaw](qwenpaw/icon.png)

[QwenPaw](https://github.com/agentscope-ai/QwenPaw) — open-source персональный AI-ассистент от AgentScope (Alibaba). Поддерживает любые LLM (OpenAI, Qwen, Gemini, Ollama) и каналы связи (Telegram, Discord, DingTalk и др.).

## Скриншот

![QwenPaw в Home Assistant](screenshot.jpg)

## Возможности

- Память и персонализация агента
- 17+ встроенных навыков: cron, PDF/Office, news, browser, email, multi-agent
- Multi-agent — несколько агентов с разными ролями
- Множество каналов: Telegram, Discord, DingTalk, Feishu, WeChat, SIP, MQTT и др.
- Многоуровневая безопасность (Tool Guard, file access guard, сканирование навыков)

## Установка

### Через интерфейс HA

1. Перейдите в **Настройки → Дополнения → Магазин → ⋮ → Добавить репозиторий**
2. Вставьте: `https://github.com/seoeaa/ha-qwenpaw`
3. QwenPaw появится в списке дополнений — нажмите **Установить**
4. После установки нажмите **Запустить**

Первый запуск займёт несколько минут (скачивание Docker image ~2ГБ).

### Быстрая ссылка

[![Открыть Home Assistant и добавить репозиторий](https://my.home-assistant.io/badges/supervisor_store.svg)](https://my.home-assistant.io/redirect/supervisor_store/?repository_url=https%3A%2F%2Fgithub.com%2Fseoeaa%2Fha-qwenpaw)

## Настройка

1. Нажмите **Open Web UI** в карточке QwenPaw
2. Перейдите в **Settings → Models**
3. Выберите провайдера (OpenAI, Qwen/DashScope, Gemini, Ollama и др.)
4. Введите API Key и включите провайдера

## Доступ

| Способ | URL |
|--------|-----|
| Web UI (LAN) | `http://<IP_HA>:8088/` |
| Кнопка в дополнении | "Open Web UI" в карточке QwenPaw |

## Параметры

| Параметр | По умолчанию | Описание |
|----------|---------------|----------|
| `qwenpaw_port` | 8088 | Порт Web UI |
| `auth_enabled` | false | Включить авторизацию для Web UI |

## Данные

Данные QwenPaw хранятся в `/share/qwenpaw/` — доступны по SSH из любого add-on.

```bash
ls /share/qwenpaw/working/workspaces/default/
```

## Ссылки

- [Репозиторий QwenPaw](https://github.com/agentscope-ai/QwenPaw) — оригинальный проект
- [Документация QwenPaw](https://qwenpaw.agentscope.io/) — официальная документация
