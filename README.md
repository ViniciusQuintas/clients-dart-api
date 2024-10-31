# Clients Dart API

Este projeto é uma API para gerenciamento de clientes desenvolvida em Dart, focando na prática de conceitos de **Clean Architecture**, **Test-Driven Development (TDD)** e **princípios SOLID**. O principal objetivo é aprofundar os estudos na linguagem Dart e aplicar boas práticas de arquitetura e testes. Este projeto utiliza PostgreSQL como banco de dados e está containerizado com Docker.

## Tecnologias e Ferramentas

- **Dart**: Linguagem de programação utilizada no backend.
- **Clean Architecture**: Organização do código em camadas para manter a separação de responsabilidades.
- **SOLID Principles**: Princípios para um design de software mais modular e manutenível.
- **TDD (Test-Driven Development)**: Desenvolvimento guiado por testes, garantindo qualidade e funcionalidade do código.
- **PostgreSQL**: Banco de dados relacional para persistência de dados.
- **Docker & Docker Compose:** Para a criação de ambientes isolados e replicáveis.
- **Shelf & Shelf Router:** Framework para construção e roteamento de servidores HTTP em Dart.
- **Postman:** Ferramenta para testes de requisições e endpoints da API.

## Estrutura de Pastas

Abaixo, a estrutura principal do projeto, organizada para seguir os princípios de Clean Architecture:

- **lib/**
  - **app/**: Contém a API e os controladores.
    - **controllers/**: Controladores responsáveis por lidar com as requisições dos clientes.
    - **dto/**: Data Transfer Objects para entrada e saída de dados dos clientes.
    - **handlers/**: Handlers responsáveis por cada operação (adicionar, deletar, atualizar e obter clientes).
  - **data/**: Implementação de gateways e serviços.
    - **gateway/**: Abstrações para acesso ao banco de dados.
    - **services/**: Regras de negócios e serviços.
  - **domain/**: Define a lógica de negócio e entidades do domínio.
    - **entities/**: Definições das entidades, como `Cliente`.
    - **exception/**: Exceções customizadas.
    - **usecases/**: Casos de uso do sistema, como adição, remoção e consulta de clientes.
  - **infra/**: Contém a infraestrutura, incluindo conexões de banco de dados.

## Principais Funcionalidades

- **CRUD de Clientes**: Possibilidade de adicionar, consultar, atualizar e deletar clientes.
- **Estrutura de Testes**: Aplicação de TDD para cada caso de uso.
- **Modularidade e Separação de Responsabilidades**: Estrutura organizada para fácil manutenção e extensibilidade.

## Configuração e Execução

1. Clone o repositório:
   ```bash
    git clone https://github.com/ViniciusQuintas/clients-dart-api
    cd clients-dart-api
   ```
2. Instale as dependências:
   ```bash
    dart pub get
   ```
3. Configure as variáveis de ambiente no arquivo `.env` conforme o exemplo em `.env.copy`

4. Execute os containers com Docker:
   ```bash
    docker-compose up
   ```  
   
5. Inicie o servidor:
   ```bash
    dart run bin/server.dart
   ```  