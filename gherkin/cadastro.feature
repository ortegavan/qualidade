            #language: pt

            Funcionalidade: Completar cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de checkout

            Cenário: Informações obrigatórias não preenchidas
            Quando eu clicar em "Finalizar compra"
            Então deve exibir a mensagem de erro "Preencha todos os campos obrigatórios"

            Cenário: E-mail inválido
            Quando eu preencher o e-mail "teste"
            E eu clicar em "Finalizar compra"
            Então deve exibir a mensagem de erro "E-mail inválido"

            Cenário: Informações obrigatórias preenchidas e corretas
            Quando eu preencher <nome>
            E eu preencher <sobrenome>
            E eu preencher <pais>
            E eu preencher <endereco>
            E eu preencher <cidade>
            E eu preencher <cep>
            E eu preencher <telefone>
            E eu preencher <email>
            E eu clicar em "Finalizar compra"
            Então deve exibir a mensagem de sucesso "Compra realizada com sucesso"

            Exemplos:
            | nome    | sobrenome  | pais     | endereco | cidade      | cep         | telefone       | email                       |
            | "João"  | "Silva"    | "Brasil" | "Rua A"  | "São Paulo" | "12345-678" | "11 1234-5678" | "joao.silva@example.org"    |
            | "Maria" | "Santos"   | "Brasil" | "Rua B"  | "São Paulo" | "12345-678" | "11 1234-5678" | "maria.santos@example.org"  |
            | "José"  | "Oliveira" | "Brasil" | "Rua C"  | "São Paulo" | "12345-678" | "11 1234-5678" | "jose.oliveira@example.org" |
            | "Ana"   | "Silveira" | "Brasil" | "Rua D"  | "São Paulo" | "12345-678" | "11 1234-5678" | "ana.silveira@example.org"  |
            | "Pedro" | "Santana"  | "Brasil" | "Rua E"  | "São Paulo" | "12345-678" | "11 1234-5678" | "pedro.santana@example.org" |
