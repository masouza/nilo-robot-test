*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
#Keywords do Setup e Teardown
Abrir Home Pratice  
    Open Browser  http://practice.automationtesting.in/    chrome

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

