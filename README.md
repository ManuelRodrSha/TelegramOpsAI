# TELEGRAMOPSAI 🤖

TELEGRAMOPSAI is a personal operations assistant designed to manage projects, tasks, and information through conversational interfaces.

The platform combines a FastAPI backend, a relational database, OpenAI-powered agents, Telegram integration, and custom hardware clients such as ESP32 devices.

The goal is to create a centralized system where all project information is accessible from multiple interfaces while maintaining a single source of truth.

---

## Features

* 🤖 AI-powered assistant using OpenAI APIs
* 💬 Telegram bot integration
* 📡 REST API built with FastAPI
* 🗄️ Persistent project and task management
* 📱 Support for custom ESP32 interfaces
* 🐳 Dockerized deployment
* 🔄 Extensible architecture for future integrations

---

## Architecture

```text
                 ┌─────────────┐
                 │ PostgreSQL  │
                 └──────┬──────┘
                        │
                        ▼
                 ┌─────────────┐
                 │   FastAPI   │
                 └──────┬──────┘
                        │
        ┌───────────────┼───────────────┐
        ▼               ▼               ▼
 ┌──────────┐   ┌────────────┐   ┌──────────┐
 │ Telegram │   │ GPT Agent  │   │  ESP32   │
 └──────────┘   └────────────┘   └──────────┘
```

All clients interact with the same API layer, ensuring consistency across the platform.

---

## Technology Stack

### Backend

* Python
* FastAPI

### Artificial Intelligence

* OpenAI API
* Function Calling / Tools

### Database

* PostgreSQL

### Messaging

* Telegram Bot API

### Hardware

* ESP32

### Infrastructure

* Docker
* Docker Compose

---

## Project Structure

```text
app/
├── api/
├── services/
├── repositories/
├── db/
├── agent/
├── integrations/
└── core/

esp32/
tests/
docker/
```

### Responsibilities

#### API Layer

Handles HTTP requests and exposes endpoints for projects, tasks, and system information.

#### Services

Contains business logic and application rules.

#### Repositories

Responsible for data access and database operations.

#### Agent

Manages interactions with OpenAI models and available tools.

#### Integrations

External services such as Telegram and OpenAI clients.

#### ESP32

Firmware and user interface components for custom hardware devices.

---

## Initial Use Cases

### Project Management

* Create projects
* Update project status
* Query project information
* List active projects

### Task Management

* Create tasks
* Assign priorities
* Mark tasks as completed

### AI Assistant

Examples:

* "Show my active projects"
* "What tasks are pending?"
* "Create a new project called HomeLab"
* "Summarize this week's progress"

### ESP32 Dashboard

* Browse projects
* View project details
* Display project metrics
* Quick status monitoring

---

## Environment Variables

Create a `.env` file:

```env
OPENAI_API_KEY=
TELEGRAM_BOT_TOKEN=
POSTGRES_USER=
POSTGRES_PASSWORD=
POSTGRES_DB=
DATABASE_URL=
```

---

## Running Locally

```bash
docker-compose up --build
```

API available at:

```text
http://localhost:8000
```

Swagger documentation:

```text
http://localhost:8000/docs
```

---

## Roadmap

### Phase 1

* [ ] Project CRUD
* [ ] Database integration
* [ ] Telegram bot
* [ ] Docker setup

### Phase 2

* [ ] OpenAI agent integration
* [ ] Tool calling
* [ ] Project summaries

### Phase 3

* [ ] ESP32 dashboard
* [ ] Notifications
* [ ] Project metrics

### Phase 4

* [ ] Web dashboard
* [ ] Multi-user support
* [ ] Authentication and roles

---

## Vision

TELEGRAMOPSAI aims to become a personal operations platform that centralizes project management through natural language interfaces, APIs, and custom hardware devices while keeping all information synchronized through a single backend.

---

## License

MIT
