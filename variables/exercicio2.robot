*** Variables ***

@{CURSOS}    java    python    csharp    ruby    javascript

*** Test Cases ***
Teste que imprime todos os 5 CURSOS
    Imprimir no console os 5 cursos
*** Keywords ***
Imprimir no console os 5 cursos
    Log To Console    ${\n}
    Log To Console    Curso 0: ${CURSOS}[0]      
    Log To Console    Curso 1: ${CURSOS}[1]
    Log To Console    Curso 2: ${CURSOS}[2]
    Log To Console    Curso 3: ${CURSOS}[3]
    Log To Console    Curso 4: ${CURSOS}[4]   
    