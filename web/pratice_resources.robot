*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
${URL_home}         http://practice.automationtesting.in/
${URL_myaccount}    http://practice.automationtesting.in/my-account/
${search}           id:s
${content}          id:content

*** Keywords ***
#Keywords do Setup e Teardown
Abrir Home Pratice  
    Open Browser  ${URL_home}   chrome
    Maximize Browser Window

Fechar Navegador
    Close All Browsers


#Keywords do BDD
Dado ${keyword}
    Run Keyword    ${keyword}

Quando ${keyword}
    Run Keyword    ${keyword}

E ${keyword}
    Run Keyword    ${keyword}

Então ${keyword}
    Run Keyword    ${keyword}

#Keywords de Execução
Que estou na home
    Wait Until Element Is Visible      ${content}  
    Title Should Be    Automation Practice Site

Que sou um cliente deslogado
    Go To    ${URL_myaccount}
    Page Should Contain  Login
    Go Back

Pesquisar um produto com nome ${string}
    Wait Until Element Is Visible    ${search}
    Input Text    ${search}      ${string}
    Press Keys    none           ENTER

Não deve ser retornado na pesquisa ${string}
    Wait Until Element Is Visible      ${content}  
    Element Should Not Contain    ${content}    ${string}

Deve ser retornada a mensagem ${string}
    Wait Until Element Is Visible      ${content}  
    Element Should Contain    ${content}    ${string}

Clicar em ${string}
# Reload page adicionado caso um ad pop-up apareça, acontecimento estranhamente comum na automação já que não pode ser replicado manualmente
    Reload Page
    Click link   ${string}

Deve ser exibido o produto ${string}
    Wait Until Element Is Visible      ${content}  
    Element Should Contain    ${content}    ${string}

Cadastrar utilizando dados válidos
    ${email}        Free Email
    #Algumas aplicações tem dificuldade de executar o botão e dar o time paro JS do cadastro funcionar. Então dei o foco para poder identificar o elemento e depois dei 1ms
    #para poder processar tudo.
    Set Focus To Element    name:register
    Sleep                   1
    Input Text          //input[@name="email"]                    ${email}
    Input Password      xpath=(//input[@name="password"])[2]      TesteNilo12@3
    Click Element           name:register

    
Cadastro deve ser concluido com sucesso
    Wait Until Element Is Visible    xpath=(//a[@href="http://practice.automationtesting.in/my-account/customer-logout/"])[2]