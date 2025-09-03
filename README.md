# API REST com Go e Gin

Este é um projeto de uma API REST desenvolvida em Go com o framework Gin. A API gerencia um cadastro de alunos.

## Funcionalidades

- CRUD completo de alunos (Criar, Ler, Atualizar, Deletar)
- Busca de alunos por CPF
- Exibição de todos os alunos
- Saudação personalizada

## Tecnologias Utilizadas

- [Go](https://golang.org/)
- [Gin](https://github.com/gin-gonic/gin)
- [GORM](https://gorm.io/)
- [PostgreSQL](https://www.postgresql.org/)
- [Docker](https://www.docker.com/)

## Começando

Para executar este projeto localmente, você precisará ter o Go e o Docker instalados.

### Pré-requisitos

- [Go](https://golang.org/doc/install)
- [Docker](https://docs.docker.com/get-docker/)

### Instalação

1.  Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/api-gin-rest.git
    ```
2.  Navegue até o diretório do projeto:
    ```sh
    cd api-gin-rest
    ```
3.  Crie um arquivo `.env` a partir do exemplo `.env.example` e preencha com suas variáveis de ambiente para o banco de dados.

4.  Instale as dependências:
    ```sh
    go mod tidy
    ```

### Executando com Docker

A maneira mais fácil de executar o projeto é com o Docker Compose.

```sh
docker-compose up -d
```

A API estará disponível em `http://localhost:8000`.

### Executando localmente

Para executar a aplicação sem o Docker:

```sh
go run main.go
```

## Endpoints da API

- `GET /alunos`: Retorna todos os alunos.
- `GET /alunos/:id`: Retorna um aluno por seu ID.
- `GET /alunos/cpf/:cpf`: Retorna um aluno por seu CPF.
- `POST /alunos`: Cria um novo aluno.
- `PATCH /alunos/:id`: Atualiza um aluno existente.
- `DELETE /alunos/:id`: Deleta um aluno.
- `GET /:nome`: Retorna uma saudação personalizada.

## Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.
