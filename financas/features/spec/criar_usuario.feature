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

    @usuario_existente
    Cenario: Validar criação de usuário ja cadastrado
        Dado que usuário insira os dados de email existente
        Então a api deve retornar uma msg que ja possui cadatro