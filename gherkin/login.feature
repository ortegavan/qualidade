# language: pt
# arquivo: gherkin/login.feature

Funcionalidade: Efetuar login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Regra: campos "usuário" e "senha" são obrigatórios

Contexto:
Dado que eu acesse a página de login da EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuário "vanessa@example.org"
E a senha "senha@123"
Então deve redirecionar para a página de pedidos

Cenário: Usuário inexistente
Quando eu digitar o usuário "inexistente@example.org"
E a "senha@123"
Então deve exibir uma mensagem de alerta: "Usuário e/ou senha inválidos"

Cenário: Senha inválida
Quando eu digitar o usuário "vanessa@example.org"
E a senha "123456"
Então deve exibir uma mensagem de alerta: "Usuário e/ou senha inválidos"

Cenário: E-mail inválido
Quando eu digitar o usuário "vanessa"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta: "Endereço de e-mail inválido"