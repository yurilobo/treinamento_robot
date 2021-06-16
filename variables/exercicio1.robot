*** Settings ***
Documentation    Meu teste de variável do Tipo Dicionário
*** Variables ***
&{PESSOA}   nome=Yuri    sobrenome=Lobo    idade=26    curso=Engenharia de Telecomunicações    sexo=masculino    profissao=estudante    

*** Test Cases ***

Meu teste imprimindo um dicionário de PESSOA
    Logar no meu terminal uma PESSOA


*** Keywords ***

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    Nome: ${PESSOA.nome}
    Log To Console    Sobrenome: ${PESSOA.sobrenome}
    Log To Console    Idade: ${PESSOA.idade}
    Log To Console    Curso: ${PESSOA.curso}
    Log To Console    Sexo: ${PESSOA.sexo}                
    Log To Console    Profissão: ${PESSOA.profissao}   
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos 