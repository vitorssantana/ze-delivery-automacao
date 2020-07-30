#language: pt

Funcionalidade: Sacola de bebidas escolhidas
    Para visualizar a quantidade, o preco do frete e o valor total das bebidas que selecionei
    Como um usuario do Ze Delivery
    Posso entrar na aba de Sacola

    Contexto:
        Dado que estou logado no ze com o login "zedeliveryaut@gmail.com", "zedelivery@2020"
        E eu adiciono 5 unidades da bebida "Brahma Duplo Malte 350ml"

    Cenario: Adicionar bebida a Sacola
        Quando eu abro minha sacola
        Entao devo ver a bebida "Brahma Duplo Malte 350ml" com 5 quantidades selecionadas
        E devo ver o valor do frete "3,99" com o valor total "16,93" a pagar

    Cenario: Acresentar unidade da bebida a Sacola
        Quando eu abro minha sacola
        E acresentar mais 5 unidades
        Entao devo ver a bebida "Brahma Duplo Malte 350ml" com 10 quantidades selecionadas
        E devo ver o valor do frete "3,99" com o valor total "29,89" a pagar
        
    Cenario: Decresentar unidade da bebida a Sacola
        Quando eu abro minha sacola
        E decresento 3 unidades do total
        Entao devo ver a bebida "Brahma Duplo Malte 350ml" com 2 quantidades selecionadas
        E devo ver o valor do frete "3,99" com o valor total "9,17" a pagar

    Cenario: Remover a bebida da Sacola
        Quando eu abro minha sacola
        E removo a bebida "Brahma Duplo Malte 350ml"
        Entao eu devo ver a sacola vazia

    Cenario: Validar regra de valor Minino para compra
        Quando eu abro minha sacola
        Entao devo ver a mensagem: 'Faltam R$ 2,05 para o valor mínimo do pedido'
        E fico impedido de continuar a compra
        Mas se eu adicionar mais 5 unidades
        Entao eu devo passar o valor minimo do pedido
        E consigo continuar a compra

    Cenario: Adicionar mais de uma bebida a sacola
        E eu adiciono 5 unidades da bebida "Skol 269ml"
        Quando eu abro minha sacola
        Entao devo ver a bebida "Brahma Duplo Malte 350ml" com 5 quantidades selecionadas
        E devo ver a bebida "Skol 269ml" com 5 quantidades selecionadas
        E devo ver o valor do frete "3,99" com o valor total "26,89" a pagar

    Cenario: Continuar a compra das bebidas com sucesso
        E eu adiciono 5 unidades da bebida "Skol 269ml"
        Quando eu abro minha sacola
        E continuo a compra para finalizar o pedido
        Entao eu devo ver a tela de checkout