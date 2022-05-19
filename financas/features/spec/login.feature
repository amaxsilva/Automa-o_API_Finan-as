#language: pt
#utf-8

@api_financas
@login
Funcionalidade: Login

    @login_sucesso
        Cenario: Efetuar login com sucesso
            Dado que informo login e senha 
            Então o sistema deve efetuar login com sucesso

    @login_invalido
        Cenario: Efetuar login invalido
            Dado que informo a senha e deixo campo email em branco 
             Então sistema deve retornar msg de obrigatoriedade de email