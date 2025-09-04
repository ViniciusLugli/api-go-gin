# API Gin REST com Go

## 📖 Sobre

Este projeto é uma API RESTful desenvolvida em Go com o framework Gin. A aplicação gerencia um cadastro de alunos, permitindo operações de CRUD (Criar, Ler, Atualizar e Deletar), e utiliza PostgreSQL como banco de dados. O ambiente de desenvolvimento é containerizado com Docker.

## ✨ Tecnologias Utilizadas

-   [Go](https://golang.org/)
-   [Gin](https://gin-gonic.com/)
-   [PostgreSQL](https://www.postgresql.org/)
-   [Docker](https://www.docker.com/)
-   [Docker Compose](https://docs.docker.com/compose/)
-   [Air](https://github.com/air-verse/air) - Para live-reload em desenvolvimento

## 🚀 Funcionalidades

-   Listar todos os alunos
-   Criar um novo aluno
-   Buscar um aluno por ID
-   Buscar um aluno por CPF
-   Editar informações de um aluno
-   Deletar um aluno
-   Exibir uma página de índice HTML
-   Rota de saudação

## Endpoints da API

| Método | Rota                  | Descrição                             |
| :----- | :-------------------- | :------------------------------------ |
| `GET`  | `/alunos`             | Lista todos os alunos.                |
| `POST` | `/alunos`             | Cria um novo aluno.                   |
| `GET`  | `/alunos/:id`         | Busca um aluno pelo ID.               |
| `GET`  | `/alunos/cpf/:cpf`    | Busca um aluno pelo CPF.              |
| `PATCH`| `/alunos/:id`         | Atualiza os dados de um aluno.        |
| `DELETE`| `/alunos/:id`        | Deleta um aluno.                      |
| `GET`  | `/:nome`              | Retorna uma saudação para o nome.     |
| `GET`  | `/index`              | Exibe uma página de exemplo.          |

## 🏁 Começando

Siga as instruções abaixo para executar o projeto em seu ambiente local.

### Pré-requisitos

-   [Docker](https://www.docker.com/get-started)
-   [Docker Compose](https://docs.docker.com/compose/install/)

### Instalação

1.  Clone o repositório:
    ```bash
    git clone https://github.com/ViniciusLugli/api-go-gin.git
    cd api-go-gin
    ```

2.  Crie um arquivo `.env` na raiz do projeto. Este arquivo conterá as variáveis de ambiente para o banco de dados. Você pode usar o exemplo abaixo:
    ```env
    POSTGRES_USER=admin
    POSTGRES_PASSWORD=admin
    POSTGRES_DB=alunos
    PGADMIN_DEFAULT_EMAIL=admin@admin.com
    PGADMIN_DEFAULT_PASSWORD=admin
    ```

## 🏃‍♀️ Executando a Aplicação

Para iniciar a aplicação, utilize o comando `make`. Isso irá construir e subir os contêineres Docker.

```bash
make run
```

A API estará disponível em `http://localhost:8000`.

## 🧪 Executando os Testes

Para rodar a suíte de testes, execute o seguinte comando:

```bash
make test
```

## 🛠️ Comandos Úteis do Makefile

-   `make run`: Inicia os contêineres da aplicação em modo detached.
-   `make stop`: Para os contêineres.
-   `make down`: Para e remove os contêineres, redes e volumes.
-   `make logs`: Exibe os logs do contêiner da aplicação.