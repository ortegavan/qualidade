            #laguage: pt

            Funcionalidade: Efetuar login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário 'vanessa@example.org'
            E a senha 'senha@123'
            Então deve redirecionar para a página de pedidos

            Cenário: Usuário inexistente
            Quando eu digitar o usuário <usuario>
            E a 'senha@123'
            Então deve exibir uma mensagem de alerta: 'Usuário e/ou senha inválidos'

            Exemplos:
            | usuario                    |
            | 'inexistente1@example.org' |
            | 'inexistente2@example.org' |
            | 'inexistente3@example.org' |
            | 'inexistente4@example.org' |
            | 'inexistente5@example.org' |
