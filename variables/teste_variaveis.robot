*** Settings ***
Documentation    Meu teste de variáveis
*** Variables ***
${MENSAGEM}    Primeiro teste!
${NUMERO}      ${25}

&{PESSOA}   nome=Yuri    sobrenome=Lobo    idade=26
@{FRUTAS}    manga    goiaba    morango    laranja

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem
Meu teste imprimindo um dicionário de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS


*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}
Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}    
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!        

Logar no meu terminal uma LISTA DE FRUTAS
    ## Declaro localmente uma nova variável
    ${outra_fruta}     Set Variable    uva
    ## Declaro uma nova variável em escopo do teste usamos set test
    Set Test Variable  ${nova_fruta}   tangerina
    Log To Console     ${\n}
    Log To Console     ${FRUTAS}
    Log Many           ${FRUTAS}
    Log To Console     ${nova_fruta}-${outra_fruta}

