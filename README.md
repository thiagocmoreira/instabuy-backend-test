# InstaBuy BackEnd Test

Este documento contém o tutorial de como rodar/utilizar a API REST, desenvolvida em Ruby on Rails e MySQL.

<p align="center">
  <a href="#"><img width="120" src="./docs/ruby.png" alt="Ruby"></a>
  <a href="#"><img width="120"  src="./docs/rails.png" alt="Rails"></a>
  <a href="#"><img width="220" src="./docs/mysql.png" alt="MySQL"></a>
</p>

## 1. Dependências do Projeto

* Ruby: 2.4.1
* Rails: 5.1.4

## 2. Instalando as Dependências

Segue abaixo alguns links que auxiliam com tutoriais a instalação das depêndencias do projeto.

### 2.1. Ruby/Rails

#### 2.1.1. MacOS

[How to Install Rails 5 on a Mac](http://blog.teamtreehouse.com/install-rails-5-mac)

### 2.1.2. Ubuntu

[How to Install Rails 5 on Linux](http://blog.teamtreehouse.com/installing-rails-5-linux)

### 2.2. MySQL

#### 2.2.1. MacOS

[Install MySQL on OS X El Capitan](https://gist.github.com/nrollr/a8d156206fa1e53c6cd6)

#### 2.2.2. Ubuntu

[How To Install MySQL on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04)

## 3. Rodando a API

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

## 4. Utilizando as Rotas

Para utilizar as rotas disponíveis na API, é necessário utilizar o postman para fazer as requisições. Para isto, basta acessar o [site oficial do Postman](https://www.getpostman.com/postman) e fazer o download. Outra alternativa é usar a extensão do próprio Postman para Google Chrome, disponível [neste link](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop).



