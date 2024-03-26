


*** Settings ***
Library      SeleniumLibrary
Library    Telnet
Resource    variaveis.robot
Resource    keywords.robot
# Library           ImageHorizonLibrary
Library    OperatingSystem 
Library    mouse
Library    BuiltIn
# Library    pyautogui
Library    Process
Resource    variaveisN.robot
Resource    variaveisCF.robot


*** Keywords ***


Dado que eu faça o login no vendas net
    Maximize Browser Window
    sleeping
    Wait Until Keyword Succeeds    3    10    abrir_browser
    Input Text    ${UsuarioVendasNet}    xxxxxx
    Input Text    ${SenhaVendasNet}      xxxxxx
    Capture Page Screenshot
    Click.    ${BtnEntrarLogin}
    Log To Console    login sucesso



abrir_browser
    Go To    ${URLvendasNet}
    
Dado que eu faça o login no portal operador
    Maximize Browser Window
    Go To    ${URL}
    Input Text    ${idrede}     xxxxx
    sleep  0.3
    Input Text    ${SenhaRede}    xxxxxx
    # Press combination    Key.ctrl    -
    # Capture Page Screenshot
    click.         ${BtnContinuar}
    Log To Console   Login OK
    
