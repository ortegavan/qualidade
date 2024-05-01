#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de detalhes de um produto na EBAC-SHOP

Cenário: Produto disponível nas cores e tamanhos escolhidos
Quando eu escolher o tamanho "M"
E a cor "Orange"
E a quantidade 2
Então o botão de adicionar ao carrinho deve estar habilitado

Cenário: Produto indisponível no tamanho escolhido
Quando eu escolher o tamanho "XL"
E a cor "Orange"
E a quantidade 1
Então o botão de adicionar ao carrinho deve estar desabilitado
E deve exibir a mensagem "Produto indisponível no tamanho escolhido"

Cenário: Múltiplos produtos escolhidos
Quando eu escolher o tamanho "M"
E a cor "Orange"
E a quantidade 12
Então o botão de adicionar ao carrinho deve estar desabilitado
E deve exibir a mensagem "Limite de 10 produtos por compra"

Cenário: Configuração resetada
Quando eu clicar no botão de "Limpar"
Então o tamanho, cor e quantidade devem ser resetados
