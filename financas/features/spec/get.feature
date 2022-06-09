#language: pt
#utf-8

@api_financas
@get

Funcionalidade:Efetuar a busca dos dados da API Finanças

    Cenario: Validar o get e obter os dados
        Dado que existe um token válido
        Então devo conseguir efetuar a busca dos dados 