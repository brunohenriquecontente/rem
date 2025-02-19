# 📜 README.md - Como Rodar a Aplicação com Docker

## 🚀 Como Rodar o Projeto com Docker

Este guia explica como configurar e rodar o **backend** e **frontend** do projeto usando Docker.

## 📌 **Pre-requisitos**
Certifique-se de ter o **Docker** instalado. Caso contrario, instale atraves dos links abaixo:

- **Windows / Mac**: [Baixe o Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Linux**: Instale via gerenciador de pacotes:
  ```sh
  sudo apt-get update && sudo apt-get install -y docker.io
  ```

---

## 🛠️ **Passo 1: Construindo o Backend**
Navegue ate o diretorio **`rem-backend`** e execute o build do Docker:

### 🔹 Windows (CMD / PowerShell):
```sh
cd rem-backend
docker build -t rem-backend-service:latest .
```

### 🔹 macOS / Linux (Terminal):
```sh
cd rem-backend
docker build -t rem-backend-service:latest .
```

---

## 🛠️ **Passo 2: Construindo o Frontend**
Agora, navegue ate o diretorio **`rem-frontend`** e faca o build:

### 🔹 Windows (CMD / PowerShell):
```sh
cd ../rem-frontend
docker build -t rem-frontend-service:latest .
```

### 🔹 macOS / Linux (Terminal):
```sh
cd ../rem-frontend
docker build -t rem-frontend-service:latest .
```

---

## 🛠️ **Passo 3: Subindo os Containers com Docker Compose**
Volte para a raiz do projeto e execute:

```sh
docker compose up -d
```
🔹 O **`-d`** roda os containers em modo "detached" (em background).  

Se precisar parar os containers:  
```sh
docker compose down
```

---

## 🎯 **Acessando a Aplicacao**
Apos rodar os containers, acesse:
- 🌐 **Frontend**: [http://localhost:80](http://localhost:80) *(ou porta configurada no Dockerfile)*
- 🛠️ **Backend**: [http://localhost:8080](http://localhost:8080) *(ou a porta definida na API)*

---

