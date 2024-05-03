            # language: pt
            # arquivo: gherkin/produto.feature

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar o produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            Esquema do cenário: Configurar produto com diferentes características
            Dado que eu acesse a página de detalhes de um produto na EBAC-SHOP
            Quando eu escolher o tamanho <tamanho>, cor <cor> e quantidade <quantidade>
            E clicar no botão de adicionar ao carrinho
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | tamanho | cor      | quantidade | mensagem                                    |
            | "M"     | "Orange" | 2          | "Produto adicionado ao carrinho"            |
            | "XL"    | "Orange" | 1          | "Produto indisponível no tamanho escolhido" |
            | "M"     | "Blue"   | 12         | "Limite de 10 produtos por compra"          |