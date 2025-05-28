#language: pt 

Funcionalidade: Cadastro no Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com campos obrigatórios vazios
    Dado que o cliente está na tela de cadastro do checkout
    Quando ele tenta finalizar o cadastro sem preencher os campos obrigatórios
    Então o sistema deve exibir uma mensagem de alerta informando os campos obrigatórios

  Cenário: Cadastro com e-mail em formato inválido
    Dado que o cliente está preenchendo o campo de e-mail
    Quando ele insere um endereço de e-mail com formato inválido
    Então o sistema deve exibir uma mensagem de erro "E-mail inválido"

  Esquema do Cenário: Cadastro com campos específicos vazios
    Dado que o cliente está preenchendo o formulário de cadastro
    Quando ele deixa o campo <campo> vazio
    Então o sistema deve exibir uma mensagem de alerta informando que o campo é obrigatório

    Exemplos:
      | campo      |
      | "nome"     |
      | "e-mail"   |
      | "telefone" |
      | "endereço" |