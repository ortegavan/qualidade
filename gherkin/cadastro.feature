# language: pt
# arquivo: gherkin/cadastro.feature

Funcionalidade: Completar cadastro
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que eu acesse a tela de checkout

Cenário: Informações obrigatórias não preenchidas
Quando eu clicar em "Finalizar compra" sem preencher algum dos campos obrigatórios
Então o sistema deve exibir a mensagem de erro "Preencha todos os campos obrigatórios"

Cenário: E-mail inválido
Quando eu preencher o e-mail "teste" e finalizar compra
Então o sistema deve exibir a mensagem de erro "E-mail inválido"

Cenário: Campos preenchidos corretamente
Quando eu preencher todos os campos obrigatórios corretamente e finalizar compra
Então o sistema deve exibir a mensagem de sucesso "Cadastro concluído com sucesso"