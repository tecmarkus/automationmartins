

*** Settings ***
Library      SeleniumLibrary
Library    Telnet
Resource    variaveis.robot



*** Keywords ***

Set Zoom
    [Arguments]    ${zoom}
    Execute JavaScript    document.body.style.zoom = "${zoom}"

Set Click
    ${Element}   Get WebElement    /html/body/script[17]
    Execute JavaScript  arguments[0].click(),${Element}

        # Execute JavaScript    document.querySelector("body > script:nth-child(19)).click()
        # Execute JavaScript    driver.execute_script(src="/_next/static/chunks/pages/vendas/negociacoes-7ed75c34d286c07f.js")




##########################################################################

swipe and click
    [Arguments]    ${element}
    TRY
    set swipe    ${element}
    WHILE    ${statusClick} == False      limit=3
    set swipe   ${element}
    # sleep  1
    END
        EXCEPT    Elemento não encontrado
        Log To Console    Elemento não encontrado
    FINALLY
        No Operation
    END


try swipe and click
    [Arguments]          ${element}
    Rolar levemente
    click.    ${element}

    
set swipe
    [Arguments]    ${element}
    ${statusClick}    Run Keyword And Return Status    try swipe and click    ${element}
    IF    ${statusClick} == True
    Set Global Variable    ${statusClick}    True
    ELSE
    Set Global Variable    ${statusClick}    False
    END




##########################################################################

# body > script:nth-child(9)
click.
    [Arguments]          ${element}
    sleep     1
    Wait Until Element Is Visible    ${element}
    click element    ${element}

rolar para elemento
    [Arguments]    ${element}
    Wait Until Keyword Succeeds    10s    1s   Wait Until Element Is Visible   ${element}
    Scroll Element Into View  ${element}
    Wait Until Keyword Succeeds    10s    1s   Wait Until Element Is Visible   ${element}

click 3X
    [Arguments]    ${element}
    Wait Until Keyword Succeeds    5s    1s   Wait Until Element Is Visible   ${element}
    Scroll Element Into View  ${element}
    Click Element   ${element}
    Click Element   ${element}
    Click Element   ${element}

Rolar levemente
    Execute JavaScript    window.scrollBy(0, 200)    # Rola a página para baixo em 500 pixels
Rolar fim da tela
    Execute JavaScript    window.scrollBy(0, 500)
    sleep  0.5
    Execute JavaScript    window.scrollBy(0, 500)
    sleep  1

pegar texto
    [Arguments]          ${element}
    Wait Until Element Is Visible    ${element}
    ${textGeted}    Get Text    ${element}
    Set Global Variable    ${textoObtido}    ${textGeted}
    Log To Console     ${textoObtido} 





sleeping
    sleep   3

click zoom
    [Arguments]          ${element}
    Wait Until Element Is Visible    ${element}
    Rolar levemente  
    ${clickStatus}    Run Keyword And Return Status    Click Element    ${element}
    IF    ${clickStatus} == True
        No Operation
    ELSE
        sleeping
        Wait Until Element Is Visible    ${element}
        Rolar levemente   
        ${clickStatus}    Run Keyword And Return Status    Click Element    ${element}
        ${clickStatus}    Run Keyword And Return Status    Click Element    ${element}
    END
    

wclick
    [Arguments]          ${element}
    esperar    ${element}
    click element    ${element}


wlclick
    [Arguments]          ${element}
    sleep  4
    ${visible}    Run Keyword And Return Status    esperar    ${element}
    IF    ${visible} == True
        No Operation
        sleeping
        click.    ${element}
    ELSE
        esperar    ${element}
        sleeping
        click.    ${element}
    END




click and wait next screen  ### valida chegou proxima tela name e implemet
    [Arguments]          ${element}    ${element2}
    ${tryclick}    Run Keyword And Return Status    wlclick    ${element}
    ${visibleNextScreen}    Run Keyword And Return Status    wclick    ${element2}
    IF    ${visibleNextScreen} == True
        No Operation
    ELSE
        ${tryclick}    Run Keyword And Return Status    wclick    ${element}
        ${visibleNextScreen}    Run Keyword And Return Status    wclick    ${element2}
    END





################### ESPERAS
wlong
    [Arguments]          ${element}
    sleep  5
    ${isvisible}    Run Keyword And Return Status    esperar    ${element}
    IF    ${isvisible} == True
        No Operation
    ELSE
       Log To Console    elemento n encontrado
    END
    

wmedium
    [Arguments]          ${element}
    sleeping
    esperar    ${element}

   
esperar
    [Arguments]          ${element}
    sleep  0.8
    ${isVisible}    Run Keyword And Return Status   Wait Until Element Is Visible    ${element}
    IF    ${isVisible} == True
        No Operation
    ELSE
        sleeping
        ${isVisible}    Run Keyword And Return Status   Wait Until Element Is Visible    ${element}
        IF    ${isVisible} == True
            No Operation
        ELSE
            sleeping
            ${isVisible}    Run Keyword And Return Status   Wait Until Element Is Visible    ${element}
            IF    ${isVisible} == True
                    No Operation
    ELSE
                    Log To Console    Elemento não encontrado
            END
        END
    END

wait.
    [Arguments]          ${element}
    sleep  0.8
    ${isVisible}    Run Keyword And Return Status   Click Element    ${element}
    IF    ${isVisible} == True
        No Operation
    ELSE
        sleeping
        ${isVisible}    Run Keyword And Return Status   Click Element    ${element}
        IF    ${isVisible} == True
            No Operation
        ELSE
            sleeping
            ${isVisible}    Run Keyword And Return Status   Click Element    ${element}
            IF    ${isVisible} == True
                    No Operation
    ELSE
                    Log To Console    Elemento não encontrado
            END
        END
    END