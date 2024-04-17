*** Settings ***
Library    SeleniumLibrary
Library    Telnet

*** Variables ***
${URL}  https://automacao.qacoders-academy.com.br/login
${emailLogin}    email
${senhaLogin}    password
${entrarLogin}   login
${multiMenu}     //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${usuarioBotao}  //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]  
${campoString}   //p[contains(.,'Aaaaaaa Bbbbb')]  
...    #//button[@class='css-1nvbq2d'][contains(.,'Logout')]

    
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window   
Fechar o navegador
    Close Browser

Passo 1 - Acessar a pagina de login 
    Go To    url=${URL}

Passo 2 - Logar no site QaCoders
    Wait Until Element Is Visible    locator=${emailLogin}
    Input Text                       locator=${emailLogin}    text=sysadmin@qacoders.com
    Input Text                       locator=${senhaLogin}    text=1234@Test
    Click Element                    locator=${entrarLogin}

Passo 3 - Clicar no botão de ação MultiMenu
     Sleep    1s
     Wait Until Element Is Visible    locator=${multiMenu}
     Click Element                    locator=${multiMenu}   
        
Passo 4 - Clicar na opção Usuários
    Wait Until Element Is Visible    locator=${usuarioBotao}
    Click Element                    locator=${usuarioBotao}
    Should Be Equal As Strings    first=Editar     values=

   