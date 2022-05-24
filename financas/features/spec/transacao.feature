#language: pt
#utf-8

@api_financas
@transacao

Funcionalidade: Efetuar transações pela API

    Contexto:
         Dado que existe um token válido

    @post_transacao
    Cenario: Efetuar uma transação com sucesso
        Quando informa os dados
        Então o sistema deve permitir efetuar a transação

    @erro_data
    Cenario: Efetuar uma transação sem data de vencimento 
        Quando que informe os dados necessario deixando campo data em branco 
        Então o sistema deve informar que o preenchimento é obrigatorio