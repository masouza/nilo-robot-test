*** Settings ***
Documentation    Essa suit testa algumas funções do site "http://practice.automationtesting.in/"
Resource         pratice_resources.robot
Test Setup       Abrir Home Pratice
Test Teardown    Fechar Navegador



*** Test Cases ***

Cenário 01: Procurando por Android Quick Startn (Negativo)
    [Documentation]  Esse teste verifica o retorno da pesquisa por texto para entrada Android Quick Start
    [Tags]           pesquisa_produto    negativo

    Dado que estou na home
    Quando pesquisar um produto com nome HTML
    Então não deve ser retornado na pesquisa Android Quick Start


Cenário 02: Procurando por itemNãoExiste
    [Documentation]  Esse teste verifica o retorno da pesquisa por texto para entrada inválida
    [Tags]           pesquisa_produto    positivo

    Dado que estou na home
    Quando pesquisar um produto com nome itemNãoExistente
    Então deve ser retornada a mensagem Sorry, nothing found

Cenário 03: Listar Produtos
    [Documentation]  Esse teste verifica listagem de curso
    [Tags]           listagem    positivo

    Dado que estou na home
    Quando clicar em Shop
    E clicar em HTML
    Então deve ser exibido o produto Thinking in HTML

 Cenário 04: Adicionar cliente
    [Documentation]  Teste de cadastro de cliente
    [Tags]           cadastro    positivo
    Dado que sou um cliente deslogado
    Quando clicar em My Account
    E cadastrar utilizando dados válidos
    Então cadastro deve ser concluido com sucesso
