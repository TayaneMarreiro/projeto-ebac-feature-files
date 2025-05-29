#language:pt 


Funcionalidade: Login na Plataforma

  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Esquema do Cenário: Tentativas de login com diferentes entradas
    Dado que o cliente está na página de login
    Quando ele insere o <usuario> e a <senha>
    Então o sistema deve exibir <resultado>

    Exemplos:
      | usuário               | senha         | resultado                                                  |
      | "cliente@valido.com" | "senha123"    | redirecionar para a tela de checkout                       |
      | "cliente@valido.com" | "senhaErrada" | exibir a mensagem "Usuário ou senha inválidos"             |
      | "cliente@invalido.com"|"senha123"    | exibir a mensagem "Usuário ou senha inválidos"             |
      | "cliente@valido.com" | "senhaErrada" | exibir a mensagem "Usuário ou senha inválidos" 
