*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${USUARIO}     standard_user
${SENHA}       secret_sauce
${usuario_invalido}    usuarioteste
${senha_invalida}      teste123

*** Keywords ***
Abrir Navegador e Acessar Página de Login
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser

Inserir Credenciais Válidas
    Input Text    id=user-name    ${USUARIO}
    Input Text    id=password     ${SENHA}
    Click Button  id=login-button

Verificar Login com Sucesso
    Wait Until Page Contains Element    class=inventory_list    timeout=5s

Inserir Credenciais Inválidas
    Input Text    id=user-name    usuario_invalido
    Input Text    id=password     senha_invalida
    Click Button  id=login-button

Inserir Credenciais em Branco
    Click Button  id=login-button

Verificar Login com Falha   
    Wait Until Element Is Visible    //*[@id="login_button_container"]/div/form/div[3]/h3
    