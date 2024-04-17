*** Settings ***
Resource  ../resources/testes_recursos_qacoders.resource
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador
   

*** Test Cases ***
cenario de teste: Login de usuário administrador
    Passo 1 - Acessar a pagina de login
    Passo 2 - Logar no site QaCoders
cenario de teste: Editar usuário
    Passo 1 - Acessar a pagina de login
    Passo 2 - Logar no site QaCoders
    Passo 3 - Clicar no botão de ação MultiMenu
    Passo 4 - Clicar na opção Usuários