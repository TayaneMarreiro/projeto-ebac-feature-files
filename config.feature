#language: pt


Funcionalidade: Configuração de Produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Seleções obrigatórias
    Dado que o cliente está na página de configuração de produto
    Quando ele tenta adicionar o produto sem selecionar cor, tamanho ou quantidade
    Então o sistema deve exibir uma mensagem informando que todos os campos são obrigatórios

  Cenário: Limite de quantidade de produtos
    Dado que o cliente selecionou cor, tamanho e quantidade
    Quando ele tenta adicionar mais de 10 unidades do mesmo produto
    Então o sistema deve bloquear a ação e exibir a mensagem "Máximo de 10 unidades por produto."

  Cenário: Botão limpar reseta as seleções
    Dado que o cliente selecionou cor, tamanho e quantidade
    Quando ele clica no botão "limpar"
    Então o sistema deve limpar todas as seleções e retornar ao estado original