*** Settings ***
Library           SeleniumLibrary
Resource          Login_resouces.robot


*** Test Cases ***
Login com sucesso
    [Documentation]    Testa login válido no sistema
    Abrir Navegador e Acessar Página de Login
    Inserir Credenciais Válidas
    Verificar Login com Sucesso
    Fechar Navegador

Login com falha
    [Documentation]    Testa login inválido no sistema
    Abrir Navegador e Acessar Página de Login
    Inserir Credenciais Inválidas
    Verificar Login com Falha
    Fechar Navegador

Login em branco
    [Documentation]    Testa login em branco no sistema
    Abrir Navegador e Acessar Página de Login
    Inserir Credenciais em Branco
    Verificar Login com Falha
    Fechar Navegador