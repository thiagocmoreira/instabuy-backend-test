# InstaBuy BackEnd Test

Este documento contém o tutorial de como rodar/utilizar a API REST, desenvolvida em Ruby on Rails e MySQL.

<p align="center">
  <a href="#"><img width="120" src="./docs/ruby.png" alt="Ruby"></a>
  <a href="#"><img width="120"  src="./docs/rails.png" alt="Rails"></a>
  <a href="#"><img width="220" src="./docs/mysql.png" alt="MySQL"></a>
</p>

# 1. Dependências do Projeto

* Ruby: 2.4.1
* Rails: 5.1.4
* MySQL: 5.1.10 ou superior

# 2. Instalando as Dependências

Segue abaixo alguns links que auxiliam com tutoriais a instalação das depêndencias do projeto.

## 2.1. Ruby/Rails

### 2.1.1. MacOS

[How to Install Rails 5 on a Mac](http://blog.teamtreehouse.com/install-rails-5-mac)

### 2.1.2. Ubuntu

[How to Install Rails 5 on Linux](http://blog.teamtreehouse.com/installing-rails-5-linux)

## 2.2. MySQL

### 2.2.1. MacOS

[Install MySQL on OS X El Capitan](https://gist.github.com/nrollr/a8d156206fa1e53c6cd6)

### 2.2.2. Ubuntu

[How To Install MySQL on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04)

# 3. Rodando a API

> Para poder rodar o projeto é necessário ter uma conexão root padrão do mysql.
>
> Este projeto não tem senha. Caso queira mudar a sua senha, utilize os comandos:
> 
> MySQL 5.7.6 ou superior:
```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';
```
> MySQL 5.7.5 ou inferior:
```sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('MyNewPass');
```

Antes de tudo, para rodar o projeto deve-se clonar o repositório utilizando o comando abaixo:

```bash
$ git clone https://github.com/thiagocmoreira/instabuy-backend-test.git
```

Caso não tenha git, basta baixar o ZIP do projeto, clicando no Botão `Clone or download` em verde no canto direito, e `Download ZIP` em seguida.

Após isto, deve-se entrar na pasta do projeto, via terminal, e instalar as gems presentes no projeto. Além disto, deve-se criar a base de dados para poder rodar a api, além de criar as tabelas executando as migrations. Todos os passos citados são feitos através dos comandos abaixo:

```bash
$ cd instabuy-backend-test
$ bundle install
$ rake db:create
$ rake db:migrate
```

Além disto, podemos popular nossa base de dados com alguns registros padrões. Para isto, execute o comando abaixo:

```bash
$ rake db:seed 
```

Com isso, já estamos aptos a rodar nossa aplicação. Para tal, devemos executar o comando abaixo:

```bash
$ rails s
```

Após isso, nossa API já está disponível no endereço `http://localhost:3000/`.

# 4. Utilizando as Rotas

Para utilizar as rotas disponíveis na API, é necessário utilizar o postman para fazer as requisições. Para isto, basta acessar o [site oficial do Postman](https://www.getpostman.com/postman) e fazer o download. Outra alternativa é usar a extensão do próprio Postman para Google Chrome, disponível [neste link](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop).

## 4.1. Rotas de Pessoa

* `/localhost:3000/`
    * `/person` - Lista todas as pessoas (GET)
    * `/person/:id` - Lista a pessoa do id passado na query (GET)
    * `/person` - Cria uma pessoa (POST)
    * `/person` - Edita uma pessoa (PUT)
    * `/person` - Exclui uma pessoa (DELETE)
    * `/person/:id` - Exclui a pessoa do id passado na query (DELETE)

## 4.1.1. Lista todas as pessoas (GET)

Envia uma requisição `GET` para a rota `/person`

### Exemplo de Resposta

```json
[
  {
    "id": 1,
    "name": "Small Paul",
    "age": 90,
    "cpf": "44251816299",
    "created_at": "2017-09-24T06:45:17.000Z",
    "updated_at": "2017-09-24T06:45:17.000Z"
  },
  {
    "id": 2,
    "name": "Meldred Merlyn",
    "age": 76,
    "cpf": "21499084778",
    "created_at": "2017-09-24T06:45:17.000Z",
    "updated_at": "2017-09-24T06:45:17.000Z"
  }, ...
]
```

## 4.1.2. Lista a pessoa do id passado na query (GET)

Envia uma requisição `GET` para a rota `/person/:id`

### Exemplo de Uso

Envio de Requisição para `/person/1`

### Exemplo de Resposta

```json
{
  "id": 1,
  "name": "Small Paul",
  "age": 90,
  "cpf": "44251816299",
  "created_at": "2017-09-24T06:45:17.000Z",
  "updated_at": "2017-09-24T06:45:17.000Z"
}
```

## 4.1.3. Cria uma pessoa (POST)

Envia uma requisição `POST` para a rota `/person` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `POST` para `/person` com o body:

_*Body*_

```json
{
  "name": "Thiago Moreira",
  "age": 21,
  "cpf": "26974536607"
}
```

### Exemplo de Resposta

```json
{
  "status": "POST Success",
  "id": 26
}
```

## 4.1.4. Edita uma pessoa (PUT)

Envia uma requisição `PUT` para a rota `/person` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `PUT` para `/person` com o body:

_*Body*_

```json
{
  "id": 26,
  "age": 20
}
```

### Exemplo de Resposta

```json
{
  "status": "PUT Success"
}
```

## 4.1.4. Exclui uma pessoa (DELETE)

Envia uma requisição `DELETE` para a rota `/person` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `DELETE` para `/person` com o body:

_*Body*_

```json
{
  "id": 26
}
```

### Exemplo de Resposta

```json
{
  "status": "DELETE Success"
}
```

## 4.1.4. Exclui a pessoa do id passado na query (DELETE)

Envia uma requisição `DELETE` para a rota `/person/:id`

### Exemplo de Uso

Envio de Requisição `DELETE` para `/person/1`

### Exemplo de Resposta

```json
{
  "status": "DELETE Success"
}
```


## 4.2. Rotas de Endereço

* `/localhost:3000/`
    * `/address` - Lista todas os endereços (GET)
    * `/address/:id` - Lista o endereço do id passado na query (GET)
    * `/person/:id_person/address` - Lista os endereços de determinada pessoa (GET)
    * `/address` - Cria um endereço (POST)
    * `/address` - Edita um endereço (PUT)
    * `/address` - Exclui um endereço (DELETE)
    * `/address/:id` - Exclui o endereço do id passado na query (DELETE)

## 4.2.1. Lista todas os endereços (GET)

Envia uma requisição `GET` para a rota `/address`

### Exemplo de Resposta

```json
[  
  {
    "id": 4,
    "zipcode": "88823726",
    "state": "Rhode Island",
    "city": "Oldtown",
    "street": "Macejkovic Terrace",
    "number": 43411,
    "created_at": "2017-09-24T06:45:17.000Z",
    "updated_at": "2017-09-24T06:45:17.000Z",
    "person_id": 1
  },
  {
    "id": 23,
    "zipcode": "23680909",
    "state": "Maine",
    "city": "Gulltown",
    "street": "Douglas Course",
    "number": 4711,
    "created_at": "2017-09-24T06:45:17.000Z",
    "updated_at": "2017-09-24T06:45:17.000Z",
    "person_id": 3
  }, ...
]
```

## 4.2.2. Lista o endereço do id passado na query (GET)

Envia uma requisição `GET` para a rota `/address/:id`

### Exemplo de Uso

Envio de Requisição para `/address/5`

### Exemplo de Resposta

```json
{
  "id": 5,
  "zipcode": "37506784",
  "state": "Kentucky",
  "city": "Myr",
  "street": "Ashton Common",
  "number": 133,
  "created_at": "2017-09-24T06:45:17.000Z",
  "updated_at": "2017-09-24T06:45:17.000Z",
  "person_id": 1
}
```

## 4.2.3. Lista os endereços de determinada pessoa (GET)

Envia uma requisição `GET` para a rota `/person/:person_id/address`

### Exemplo de Uso

Envio de Requisição para `/person/1/address`

### Exemplo de Resposta

```json
[
  {
    "id": 25,
    "zipcode": "74285277",
    "state": "Distrito Federal",
    "city": "Águas Claras",
    "street": "Rua das Pitangueiras",
    "number": 10,
    "created_at": "2017-09-24T06:50:53.000Z",
    "updated_at": "2017-09-24T07:05:14.000Z",
    "person_id": 1
  },
  {
    "id": 4,
    "zipcode": "88823726",
    "state": "Rhode Island",
    "city": "Oldtown",
    "street": "Macejkovic Terrace",
    "number": 43411,
    "created_at": "2017-09-24T06:45:17.000Z",
    "updated_at": "2017-09-24T06:45:17.000Z",
    "person_id": 1
  }, ...
]
```

## 4.2.4. Cria um endereço (POST)

Envia uma requisição `POST` para a rota `/address` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `POST` para `/address` com o body:



_*Body*_


```json
{
  "zipcode": "74285277",
  "state": "Distrito Federal",
  "city": "Taguatinga",
  "street": "Praça do DI",
  "number": 5,
  "person_id": 1
}
```
> **Obs:** O campo "person_id" deve ser o "id" de uma pessoa já cadastrada na API
### Exemplo de Resposta

```json
{
  "status": "POST Success",
  "id": 40
}
```

## 4.2.5. Edita um endereço (PUT)

Envia uma requisição `PUT` para a rota `/address` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `PUT` para `/address` com o body:

_*Body*_

```json
{
  "id": 26,
  "street": "Asa Sul"
}
```

### Exemplo de Resposta

```json
{
  "status": "PUT Success"
}
```

## 4.2.6. Exclui um endereço (DELETE)

Envia uma requisição `DELETE` para a rota `/address` com um `body` contendo os campos necessários

### Exemplo de Uso

Envio de Requisição `DELETE` para `/address` com o body:

_*Body*_

```json
{
  "id": 26
}
```

### Exemplo de Resposta

```json
{
  "status": "DELETE Success"
}
```

## 4.2.7. Exclui o endereço do id passado na query (DELETE)

Envia uma requisição `DELETE` para a rota `/address/:id`

### Exemplo de Uso

Envio de Requisição `DELETE` para `/address/20`

### Exemplo de Resposta

```json
{
  "status": "DELETE Success"
}
```



> **Nota pessoal:** Quando percebi o erro de ortografia em Address já era tarde demais :worried: