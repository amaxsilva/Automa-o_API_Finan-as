#language: pt
#utf-8
@api_financas
@create_user

Funcionalidade: Criar Usuários
Eu como usuário não cadastrado
Desejo criar um usuário em api_finanças
Para controle de gastos

    @usuario_valido
    Cenario: Validar criação de usuário 
        Dado que usuário insira os dados validos 
        Então a api deve retornar sucesso 

    @usuario_invalido
    Cenario: Validar criação de usuário com status erro
        Dado que usuário insira os dados de email invalidos 
        Então a api deve retornar erro