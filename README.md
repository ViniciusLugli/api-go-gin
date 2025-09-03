# API REST com Go e Gin

![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Gin](https://img.shields.io/badge/Gin-009485?style=for-the-badge&logo=gin&logoColor=white)

Uma API REST desenvolvida em Go utilizando o framework Gin para gerenciar um cadastro de alunos. Este projeto demonstra a criação de um CRUD completo, com conexão a um banco de dados PostgreSQL e suporte a Docker para fácil configuração e deploy.

## ✨ Funcionalidades

- **CRUD completo** de alunos (Criar, Ler, Atualizar, Deletar).
- **Busca de alunos** por CPF.
- **Exibição** de todos os alunos cadastrados.
- **Saudação** personalizada.

## Project Structure

```
.
├── controllers
│   └── controller.go   # Lógica de negócio dos endpoints
├── database
│   └── db.go           # Conexão com o banco de dados
├── models
│   └── aluno.go        # Modelo de dados do aluno
├── routes
│   └── routes.go       # Definição das rotas da API
├── .air.toml           # Configuração do Air para live-reloading
├── docker-compose.yml  # Orquestração dos containers
├── Dockerfile          # Container da aplicação Go
├── go.mod              # Dependências do projeto
├── main.go             # Ponto de entrada da aplicação
└── README.md
```

## 🚀 Começando

Para executar este projeto, você precisará ter as seguintes ferramentas instaladas em seu ambiente de desenvolvimento.

### Pré-requisitos

- [Go](https://golang.org/doc/install) (versão 1.18 ou superior)
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Instalação

1. **Clone o repositório:**

    ```sh
    git clone https://github.com/seu-usuario/api-gin-rest.git
    cd api-gin-rest
    ```

2. **Instale as dependências:**

    ```sh
    go mod tidy
    ```

## 🏃‍♀️ Executando a Aplicação

Existem algumas maneiras de executar a aplicação. A mais recomendada é utilizando Docker Compose.

### 🐳 Com Docker Compose (Recomendado)

Este método irá construir a imagem da aplicação e subir o container do banco de dados PostgreSQL.

```sh
docker-compose up -d --build
```

A API estará disponível em `http://localhost:8000`.

### 🐋 Com Docker (Apenas a API)

Se você já possui um banco de dados PostgreSQL rodando separadamente, pode executar apenas a aplicação com o Docker.

1. **Construa a imagem Docker:**

    ```sh
    docker build -t api-gin-rest .
    ```

2. **Execute o container:**

    ```sh
    docker run -p 8000:8000 api-gin-rest
    ```

### 💻 Localmente (Com Live Reload)

Para desenvolvimento, você pode executar a aplicação localmente utilizando o `air` para live reloading.

1. **Instale o Air:**

    ```sh
    go install github.com/cosmtrek/air@latest
    ```

2. **Execute a aplicação:**

    ```sh
    air
    ```

A aplicação será iniciada e irá reiniciar automaticamente a cada alteração nos arquivos `.go`.

## Endpoints da API

A seguir estão os endpoints disponíveis na API.

---

### Alunos

#### `GET /alunos`

Retorna uma lista com todos os alunos cadastrados.

- **Exemplo de Resposta (`200 OK`):**

  ```json
  [
    {
      "ID": 1,
      "Nome": "João da Silva",
      "CPF": "123.456.789-00",
      "RG": "12.345.678-9"
    },
    {
      "ID": 2,
      "Nome": "Maria Souza",
      "CPF": "987.654.321-00",
      "RG": "98.765.432-1"
    }
  ]
  ```

#### `GET /alunos/:id`

Busca um aluno específico pelo seu `ID`.

- **Exemplo de Resposta (`200 OK`):**

  ```json
  {
    "ID": 1,
    "Nome": "João da Silva",
    "CPF": "123.456.789-00",
    "RG": "12.345.678-9"
  }
  ```

#### `GET /alunos/cpf/:cpf`

Busca um aluno específico pelo seu `CPF`.

- **Exemplo de Resposta (`200 OK`):**

  ```json
  {
    "ID": 1,
    "Nome": "João da Silva",
    "CPF": "123.456.789-00",
    "RG": "12.345.678-9"
  }
  ```

#### `POST /alunos`

Cria um novo aluno.

- **Corpo da Requisição:**

  ```json
  {
    "nome": "Carlos Pereira",
    "cpf": "111.222.333-44",
    "rg": "11.222.333-4"
  }
  ```

- **Exemplo de Resposta (`201 Created`):**

  ```json
  {
    "ID": 3,
    "Nome": "Carlos Pereira",
    "CPF": "111.222.333-44",
    "RG": "11.222.333-4"
  }
  ```

#### `PATCH /alunos/:id`

Atualiza os dados de um aluno existente.

- **Corpo da Requisição:**

  ```json
  {
    "nome": "Carlos Pereira da Costa",
    "cpf": "111.222.333-44",
    "rg": "11.222.333-4"
  }
  ```

- **Exemplo de Resposta (`200 OK`):**

  ```json
  {
    "ID": 3,
    "Nome": "Carlos Pereira da Costa",
    "CPF": "111.222.333-44",
    "RG": "11.222.333-4"
  }
  ```

#### `DELETE /alunos/:id`

Deleta um aluno pelo seu `ID`.

- **Exemplo de Resposta (`204 No Content`):**

---

### Saudação

#### `GET /:nome`

Retorna uma saudação personalizada.

- **Exemplo de Resposta (`200 OK`):**

  ```json
  {
    "message": "E aí, João, tudo beleza?"
  }
  ```

## 📄 Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.

