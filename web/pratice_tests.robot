*** Settings ***
Documentation    Essa suit testa algumas funções do site "http://practice.automationtesting.in/"
Resource         pratice_resources.robot
Test Setup       Abrir Home Pratice
Test Teardown    Fechar Navegador



*** Test Cases ***

Cenário 01: Procurando por um produto (positivo)
    [Documentation]  Esse teste verifica o retorno da pesquisa por texto para entrada válida
    [Tags]          pesquisa_produto    positivo

    Dado que sou um cliente deslogado
    Quando eu pesquisar um produto com nome "HTML" na pesquisa
    E clicar no botão de pesquisa
    Então o produto "Android Quick Start" deve ser retornado na pesquisa

Cenário 02: Procurando por um produto (negativo)
    [Documentation] Esse teste verifica o retorno da pesquisa por texto para entrada inválida
    [Tags]          pesquisa_produto    negativo

    Dado que sou um cliente deslogado
    Quando eu pesquisar um produto com nome "itemNãoExistente" na pesquisa
    E clicar no botão de pesquisa
    Então deve ser retornada a mensagem "itemNãoExistente"

Cenário 03: Listar Produtos


Cenário 04: Adicionar cliente

