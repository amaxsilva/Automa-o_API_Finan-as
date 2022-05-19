#language: pt
#utf-8

@api_financas
@token

Funcionalidade: Obter Token

    Cenário: Gerar token OAuth
        Dado que tenha login e senha
        Então sistema deve gerar um token