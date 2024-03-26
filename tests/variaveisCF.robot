
*** Settings ***
Library  SeleniumLibrary
Library    Collections
Library    String
Library    BuiltIn



*** Variables ***
${URLportalClienteFinal}    https://portal-hom.martinsatacado.com.br/
${campoBuscaProduto}      //input[@type='search']
${entreOuCadastreSe}    //strong[contains(.,'Login')]
${btnEntrar2}    //h5[contains(.,'Entrar')]
${entreOuCadastreSe}    //strong[contains(.,'Login')]
${btnEntrar}  //span[@class='MuiButton-label'][contains(.,'Entrar')]
${campoEmail}  client-login
${campoSenha}  final-client-password
${btnAgoraNao}       //span[@class='MuiButton-label'][contains(.,'Agora não')]
${btnOK}       //span[@class='MuiButton-label'][contains(.,'OK')]
${btnSelecionarCliente}  //div[contains(@role,'button')]
${clienteTejotao1}  (//div[contains(.,'25.735.465/0001-11')])[7]
${btnformadepagamentoCF}   //span[contains(@class,'sc-7275192b-9 haLwhI sc-328b8de7-4 cgwNGG')]
${btnContinuarCF}  //span[contains(.,'Continuar')]
${CPboleto}    //span[contains(.,'Boleto Bancário')]
${BTNboletoaPrazo}    (//span[contains(.,'7 Dias')])[2]
${btnAplicarCF}               //span[contains(.,'Aplicar')]
${LOGOMartinsCF}    //img[contains(@alt,'Logo Martins')]
${TXTitensPorPagina}    //p[contains(.,'Itens por página')]
${IMGproduto}    //img[@alt='Creme Dental Colgate Tripla Ação 90g Embalagem com 12 Unidades']
${btnAdicionarAoCarrinho}   //span[contains(.,'Adicionar ao carrinho')]
${BtnLimparCarrinho}        (//div[contains(.,'Limpar carrinho')])[16]
${INPUTprodutoCarrinho}   //input[@type='text']
${BTNResumodoPedido}            //h6[contains(.,'Resumo do pedido')]
${btnContinuarcuponsebeneficios}   (//div[contains(.,'Ir para Cupons e Benefícios')])[18]
${btnnaoqueroutilizarsaldobem}          //span[@class='sc-7275192b-9 haLwhI sc-222ba3ea-7 gXQtkW'][contains(.,'Não quero utilizar saldo do BEM')]
${btnconfirmarCF}    //span[@class='MuiButton-label'][contains(.,'Confirmar')]
${btnrevisaopagamento}    //div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-1 MuiGrid-align-items-xs-center MuiGrid-justify-content-xs-center']
${checkboxdeclaroquelicf}         //input[@type='checkbox']
${TELApagamentoCF}    //h5[contains(.,'Revise aqui as informações e conclua o pagamento')]
${btnfinalizarPedidoCF}        //div[@class='MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-1 MuiGrid-align-items-xs-center MuiGrid-justify-content-xs-center'][contains(.,'Finalizar pedido')]
${btnpesquisadesatisfaçãoagoranao}        //span[contains(.,'Agora não')]
${conclusaoPedidoFinalizadoCF}    //h4[contains(.,'Conclusão')]
