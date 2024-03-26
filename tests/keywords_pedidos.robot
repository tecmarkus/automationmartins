


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
    Log To Console    vai abrir url
    Wait Until Keyword Succeeds    3    10    abrir_browser
    Input Text    ${UsuarioVendasNet}    evaldof
    Input Text    ${SenhaVendasNet}      Vasco@2222
    Capture Page Screenshot
    Click.    ${BtnEntrarLogin}
    Log To Console    login sucesso



abrir_browser
    Go To    ${URLvendasNet}
    
Dado que eu faça o login no portal operador
    Maximize Browser Window
    Go To    ${URL}
    Input Text    ${idrede}     PSANF040
    sleep  0.3
    Input Text    ${SenhaRede}    ANA@laine9994
    # Press combination    Key.ctrl    -
    # Capture Page Screenshot
    click.         ${BtnContinuar}
    Log To Console   Login OK
    

Limpar Cache
    [Arguments]    ${timeout}=5
    Execute JavaScript    window.open('chrome://settings/clearBrowserData', '_blank')
    Sleep    2s
    # Select Window
    # Click Element    //settings-ui
    # Click Element    //settings-ui//settings-main-content//settings-basic-page//settings-section[2]//settings-privacy-page//settings-clear-browsing-data-dialog//cr-view-manager//cr-view//cr-elements-action-box//cr-button[2]//div
    Sleep    ${timeout}
    Close Window

Abrir o navegador
    Set Selenium Timeout    15
    Open Browser    browser=chrome        options=add_argument("--incognito")
    # Limpar Cache
    Maximize Browser Window
    Log to console	*Início teste.

Fechar o navegador
    BuiltIn.sleep  1
    # Capture Page Screenshot
    Close Browser
    
Dado que eu faça o login no portal operador (falha)
   Maximize Browser Window
    Go To    ${URL}
    Log To Console    ****************TESTE FALHA****************
    Fail

    


Insiro o codigo do cliente "${codcli}"
    sleeping
    esperar    ${INPUTCodCliente}
    Input Text    ${INPUTCodCliente}     ${codcli}
    # Capture Page Screenshot
    click.    ${ICONsearchCliente}
    Log To Console   Buscando cliente

Acesso o menu e inicío nova venda
    click.    ${BtnMenu}
    sleeping
    click.    ${BTNRealizarVenda}
    sleeping
    Log To Console   Menu principal, nova venda

acesso o menu
    click.    ${BtnMenu}
    Log To Console   Menu principal


E inicío nova venda
    esperar    ${BtnRealizarVenda}
    click.    ${BtnRealizarVenda}
    Log To Console   Nova venda

Verifico a forma de pagamento e altero para boleto à vista
    ${cp111}    Run Keyword And Return Status     Wait Until Element Is Visible   ${TXT111}
    IF    ${cp111} == True
        No Operation
    ELSE
        alterar prerencia pagto home boleto
    END
    Log To Console    Verifico CP 111

Alterar prerencia pagto home boleto
    click.    ${BtnFormaDePagamento}
    click.    ${BtnBoletoAvista}
    # Capture Page Screenshot
    click.    ${BtnPgtoantecipado}
    click.    ${Btnaplicarcondpagamento}
    Log To Console    Altero CP para 111



# Adiciono o produto "${prod}"
Adiciono o produto "${prod}"
    wait.    ${INPUTbuscaProd}
    Log To Console   1
    click.    ${INPUTbuscaProd}
    Input Text    ${INPUTbuscaProd}   ${prod}
    Log To Console   2
    click.    ${CHECKBOXlupaBuscaProd}
    sleep  1
    click.    ${INPUTbuscaProd}
    Log To Console   3
    Press Keys  none  ENTER
    sleep  1
    Log To Console   4
    wlclick    ${BtnAdcCarrinhoPDP}
    Log To Console   5
    Log To Console   Adiciono o produto

# Adiciono o produto "${prod}" (PLP)
#     wlong    ${INPUTbuscaProd}
#     Log To Console   1
#     click.    ${INPUTbuscaProd}
#     Input Text    ${INPUTbuscaProd}    2222416
#     Log To Console   2
#     click.    ${INPUTbuscaProd}
#     Log To Console   3
#     sleep  1
#     Press Keys  none  ENTER
#     Log To Console   6
#     # Rolar levemente
#     wlclick    ${BtnAdcCarrinhoPLP}
#     Log To Console   7
#     Log To Console   Adiciono o produto


Vou para o carrinho
    # Capture Page Screenshot
    click.    ${BtnCarrinho}
    Log To Console    Vou para o carrinho

Clico no botão continuar
    Wait Until Element Is Enabled     ${BtnContinuar}
    click.    ${BtnContinuar} 
    Log To Console    Clico no botão continuar no carrinho

Clico no botão Finalizar pedido
    
    esperar  ${BtnFinalizarPedido}
    sleeping
    Rolar levemente
    sleeping
    click.    ${BtnFinalizarPedido}
    # Capture Page Screenshot
    Log To Console   Clico no botão finalizar pedido
    

Será exibida a mensagem "${texto}"
    esperar    ${PedidoRealizado}
    pegar texto    ${PedidoRealizado}
    # ${text}  Get Text    ${PedidoRealizado}
    Log To Console   Pedido finalizado
    Should Be Equal    ${textoObtido}   ${texto}

Será exibida a mensagem "${texto}" ao finalizar complemento de carga
    esperar    ${TXTcomplementoDeCarga}
    pegar texto    ${TXTcomplementoDeCarga}
    # ${text}  Get Text    ${PedidoRealizado}
    Log To Console   Pedido finalizado
    Should Be Equal    ${textoObtido}   ${texto}
    
   


E clico em cupom
    click.    ${BtnCupom}

 E adiciono no carrinho na tela de cupons
    Input Text    ${Btnqtdade}    0
    click.    ${BtnAdcCarrinhoPLP}
    




Clico em Negociações
    Sleep    2
    Mouse Over    ${BTNnegociacoes}
    # Sleep    1
    # Mouse.Move     380    525
    # Click
    # sleeping
    click.    ${BTNnegociacoesDIV}
    # click.    ${TXTnegociaoesPT100019}

E na negociação com complemento de carga, e acesso complemento de carga CAMPO
    ${click}    Run Keyword And Return Status    wclick    ${TXTnegociaoesEVALDOF}
    IF    ${click} == True
        No Operation
    ELSE
        Rolar levemente    
        wclick    ${TXTnegociaoesEVALDOF}
    END
    swipe and click    ${ICONcomplementoCarga}
    wclick    ${BTNprosseguir}
    wait.    ${SCREENcomplCarga}
    


E na negociação com complemento de carga, e acesso complemento de carga B2B
    ${click}    Run Keyword And Return Status    wclick    ${TXTnegociaoesTECMARKUS}
    IF    ${click} == True
        No Operation
    ELSE
        Rolar levemente    
        wclick    ${TXTnegociaoesTECMARKUS}
    END
    swipe and click    ${ICONcomplementoCarga}
    wclick    ${BTNprosseguir}
    wait.    ${SCREENcomplCarga}
    
    ##########################################################    VENDASNET

Faço login e insiro o cod do cliente "${codcli}"
    esperar    ${INPUTCodClienteVN}
    Input Text    ${INPUTCodClienteVN}    ${codcli}
    Log To Console    VENDAS NET OK
    Click.    ${BTNbuscarCliente}
    esperar    ${clienteListado777778}
    click.    ${clienteListado777778}


Busco pelo produto (VN) "${ProdMartins}"
    wlclick    ${INPUTbuscaprodVN}
    Input Text    ${INPUTbuscaprodVN}    ${ProdMartins}
    Click Element    ${BtnBuscarProduto}

Adiciono 1 unidade
    rolar para elemento    ${BTNadicionarProdVN}
    click.    ${BTNadicionarProdVN}
    click.    ${BTNadicionarItensVN} 
    

Clico em ir para o carrinho
    rolar para elemento    ${ICONcarrinhoVN}
    wlclick    ${ICONcarrinhoVN}
    sleep  1
    click.     ${BTNfecharPedido}
    
Sem aplicar desconto clico em prosseguir e confirmar a vista
    # wlclick    ${BTNnaoAplicarBeneficio}
    wlclick    ${BTNnaoAplicarDesconto}

Sem aplicar desconto clico em prosseguir e confirmar
    # wlclick    ${BTNnaoAplicarBeneficio}
    wlclick    ${BTNprosseguir}
    wlclick    ${BTNconfirmarVN}


Entao visualizo a tela de historico de pedidos
    esperar    ${VALUEnumPedido}
    ${text}    Get Text    ${VALUEnumPedido}
    Set Global Variable    ${pedidoComplementoCarga}    ${text}
    Log To Console   *********** ${text}

Clico em novo pedido
    wlclick  ${BTNmenuVN}
    click and wait next screen    ${BTNnovoPedido}    ${INPUTcondicaodePagamento}

Adiciono a Forma de pagamento ${cp}
    wlclick    ${INPUTcondicaodePagamento}
    Input Text    ${INPUTcondicaodePagamento}     ${cp}
    Click.   ${BtnProdutos}

##########################################################    PORTAL CLIENTE FINAL
Dado que eu faça o login no portal martins homologação (Tejotão) "${email}"
    Go To    url=${URLportalClienteFinal}
    Wait Until Element Is Visible    locator=${campoBuscaProduto}
    Click Element    locator=${entreOuCadastreSe}
    click.    ${btnEntrar}
    Wait Until Element Is Visible    locator=${btnEntrar2}
    Click Element    locator=${campoEmail}
    Input Text 		locator=${campoEmail}	text=${email}
    Click Element    locator=${campoSenha}
    Input Text 		locator=${campoSenha}	text=hml@123
    # Capture Page Screenshot
    Click Element    locator=${btnContinuar}
    click.   ${btnSelecionarCliente}
    Click Element    locator=${clienteTejotao1}
    Click Element    locator=${btnEntrar}
    # Wait Until Element Is Visible    locator=${campoBuscaProduto}
    sleep   8
    ${keyword_status}=  Run Keyword And Return Status    Click element    ${btnAgoraNao}
    ${keyword_status}=  Run Keyword And Return Status    Click element    ${btnOK}

Verifico/altero forma de pagamento para boleto a prazo
        sleeping
    click.    ${btncontinuarCF}
    ${texto}   Get Text    ${btnformadepagamentoCF}
    Log To Console    **** ${texto} *****
    # Should Contain      ${texto}       Pagamento Antecipado - PAGAMENTO À VISTA
    
    ${TrueORfalse}    Run Keyword And Return Status    Should Be Equal    ${texto}     7 Dias 
    IF    ${TrueORfalse} == True
         No Operation
    ELSE
        Alterar CP para boleto a prazo
    END


Alterar CP para boleto a prazo
    click.    ${btnformadepagamentoCF}
    click.    ${CPboleto}
    click.    ${BTNboletoaPrazo}
    rolar para elemento    ${btnAplicarCF}
    click.    ${btnAplicarCF}


Quando faço a busca por produto "${codProduto}"
    Wait Until Element Is Visible    ${LOGOMartinsCF} 
    click 3X    ${campoBuscaProduto}
    Input Text    ${campoBuscaProduto}    ${codProduto}
    Press Keys   ${campoBuscaProduto}     ENTER
    sleeping

E acesso a PDP do produto para ver mais detalhes
    rolar para elemento    ${TXTitensPorPagina}
    click.     ${IMGproduto}

E adiciono o produto ao carrinho
    click.    ${btnAdicionarAoCarrinho}
    sleeping

E acesso o carrinho
    rolar para elemento    ${btnCarrinho}
    click.    ${btnCarrinho}

E Adiciono "10" unidades do produto
    Sleep    2
    rolar para elemento   ${BtnLimparCarrinho}
    Input Text    ${INPUTprodutoCarrinho}    9

E clico em continuar ir para cupons e beneficios
    click.    ${BTNResumodoPedido}
    sleep    3
    click.    ${btnContinuarcuponsebeneficios}
    Sleep    2.5

Não quero utilizar o saldo bem 
    Sleep    2
    click.    ${btnnaoqueroutilizarsaldobem}
    click.    ${btnconfirmarCF}

E clico em ir para revisão e pagamento
    click.    ${btnrevisaopagamento}
    Sleep    5

      ${TrueORfalse}    Run Keyword And Return Status    Should Contain    ${btnContinuarCF}       beneficios disponiveis   
    IF    ${TrueORfalse} == False
         No Operation
    ELSE
        Log To Console    **********************FALHA*************************
        Fail
    END

E clico em Declaro que li e concordo com os termos e politicas
    sleeping
    ${wait}   Run Keyword And Return Status     Wait Until Element Is Visible    ${TELApagamentoCF}
    Sleep    3
    Rolar levemente
    sleep  1
    Click Element   ${checkboxdeclaroqueliCF}

E clico em finalizar
    sleeping
    click.    ${btnfinalizarPedidoCF}
    Sleep    8  
    click.    ${btnpesquisadesatisfaçãoagoranao} 
    sleep    3

Então o pedido é concluído
    Sleep    3
    Wait Until Element Is Visible    locator=${conclusaoPedidoFinalizadoCF}
    ${textoGet}=  Get Text      locator=${conclusaoPedidoFinalizadoCF}

    Should Be Equal    ${textoGet}      Conclusão 
    Log To Console    Pedido realizado com sucesso!