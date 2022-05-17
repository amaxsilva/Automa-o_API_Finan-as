#language: pt

#tag para usar em todos os cenarios, ajuda para rodar todos os steps do projeto
@tag_master
#tag local, ajuda para rodar apenas os cenarios deste arquivo
@tag_local

Funcionalidade: Modelo de estrutura BDD/Gherkin

    @tag_cenario_1
    Cenario: Estrutura de Cenario 
        Dado que estou logado na aplicação
        Quando digito login e senha 
        Então sistema deve efetuar login com sucesso