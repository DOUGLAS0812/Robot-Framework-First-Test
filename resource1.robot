*** Settings ***
Library     SeleniumLibrary 

*** Variables ***
${BROWSER}    Mozilla Firefox
${URl}    http://wwww.amazon.com.br

*** Keywords ***
Acessar a pagina da amazon
    Open Browser    url=${URl}    browser=${BROWSER}

Pesquisar por celulares 
    Input Text    locator=id:twotabsearchtextbox    text= celulares
    Click Element    locator= id=nav-search-submit-button
Validar o resultado
    Wait Until Page Contains    text= RESULTADOS 


