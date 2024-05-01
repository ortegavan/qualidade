            #laguage: pt

            Funcionalidade: Tela de login
            Como aluno da EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário 'joao@ebac.com.br'
            E a senha 'senha@123'
            Então deve exibir uma mensagem de boas vindas: 'Olá João'

            Cenário: Usuário inexistente
            Quando eu digitar o usuário 'inexistente@ebac.com.br'
            E a senha 'senha@123'
            Então deve exibir uma mensagem de alerta: 'Usuário inexistente'

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário 'joao@ebac.com.br'
            E a senha '123456789'
            Então deve exibir uma mensagem de alerta: 'Usuário/senha inválidos'

            Cenário: Autenticar múltiplos usuários
            Quando eu digitar o usuário <usuario>
            E a <senha>
            Então deve exibir uma mensagem de boas vindas: 'Olá <nome>'

            Exemplos:
            | usuario             | senha       | nome    |
            | "joao@ebac.com.br"  | "senha@123" | "João"  |
            | "maria@ebac.com.br" | "senha@123" | "Maria" |
            | "pedro@ebac.com.br" | "senha@123" | "Pedro" |
