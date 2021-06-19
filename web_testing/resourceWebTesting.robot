*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting
Library          SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=chrome

## ---- TEARDOWN
Fechar o Navegador
    Close Browser    

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

    
Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    # Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]
    
Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element    xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Conferir mensagem "No results were found for your search "itemNãoExistente""
    Wait Until Element Is Visible    xpath=//p[@class='alert alert-warning'][contains(.,'No results were found for your search "itemNãoExistente"')]

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias 
    Mouse Over       xpath=//a[contains(@title,'Women')]  

Clicar na sub categoria "${CATEGORIA}"
    Mouse Over       xpath=(//a[@title='Summer Dresses'])[1]
    Click Element    xpath=(//a[@title='Summer Dresses'])[1]

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Wait Until Element Is Visible    xpath=//span[@class='cat-name'][contains(.,'${SUBCATEGORIA}')]

Clicar em "${SIGING}"
    Click Element       xpath=//a[@class='login'][contains(.,'${SIGING}')]


Informar um E-mail "yuri2@teste.com"
Clicar em "Create an account"
Preencher os dados obrigatórios
Submeter cadastro
Conferir se o cadastro foi efetuado com sucesso
    