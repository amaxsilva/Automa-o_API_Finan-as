#language: pt
#utf-8
@api_financas
@deletar

Funcionalidade: Deletar usuário 

    Cenario: Validar se api esta permitindo efetuar a ação de deletar 
        Dado que existe um token válido
        Então o sistema deve permitir deletar 