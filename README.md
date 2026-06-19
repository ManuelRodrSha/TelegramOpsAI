# TelegramOpsAI

TelegramOpsAI is an AI-powered project management assistant that helps you organize, query, and interact with your personal projects through natural language.

It integrates GPT-based agents, a FastAPI backend, a database layer, and a Telegram bot interface to provide a simple and fast way to manage projects.

---

## 🚀 Features

- 📌 Manage personal projects via Telegram
- 🤖 AI agent powered by OpenAI GPT API
- 🔍 Natural language queries over your project database
- 🌐 REST API built with FastAPI
- 🗄️ Persistent storage using relational database
- 🐳 Fully containerized with Docker
- 🔄 Scalable architecture ready for extensions

---

## 🧱 Tech Stack

- **Backend:** FastAPI (Python)
- **AI Engine:** OpenAI GPT API
- **Bot Interface:** Telegram Bot API
- **Database:** PostgreSQL / MySQL (choose one)
- **Containerization:** Docker & Docker Compose
- **ORM:** SQLAlchemy / raw SQL (optional)

---

## 📦 Architecture Overview

User → Telegram Bot → FastAPI → AI Agent (GPT)  
                             ↘ Database (projects, tasks)

---

## 🧠 How it works

1. User sends a message via Telegram
2. Telegram bot forwards request to FastAPI backend
3. GPT agent interprets intent (create, query, update project)
4. Backend interacts with database if needed
5. Response is returned to Telegram

---

## 🐳 Running the project

```bash
docker-compose up --build
