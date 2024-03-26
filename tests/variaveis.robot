
*** Settings ***
Library  SeleniumLibrary
Library    Collections
Library    String
Library    BuiltIn



*** Variables ***


@{lista}  	1200185		1207950		1227310		4600123		4302198	       1218599 	    4600229	        4600233     	101765		1202292		1212750				1227340    1702351		4600230		104816		1201547		1202293		1212760		1218601		1500491		1702646		4600124		4600231        1201556		 1202477	    	1212770		  1218602	    	1500493 		1702984	    	4600125	    	4600232		1200184		1202285        1212780		1218603		1500494		1703129		4600128        	105932		1202286		1202479		1212790            1218604	    	1500495		  1708280		4600133		4900501		203997		1202481		1212800			1500496		1710840        4600134		4900559		205426		1202482		1215014		1222830		1500497		1713820		4600135		4900854		205501        1500668		4301798	     	4600222		1200183		204239			1215017		  1222860		1501184		4302192		4600223            1045500		1207910		1215018		1222870		 1602028		4302193			1200179		1207920		1226960            4302194		  4600225		1200181		 1207930		1217528		1227000		4302195		4600226		1202287		1217531		    1702349            1207940		1227260		1217529		1701128		1201426		1227180		4302197		1602530		4600228				104817            4600227		




# ELMENTOS FLUXO LOGIN HOMOLOGAÇÃO

${time}    3.5
${time1}    5
${time2}    8
${time3}    12

${URLvendasNet}     https://ww6.martins.com.br/vendasnet/login.html#/
${URL}    https://vendas-hom.martinsatacado.com.br/vendas
# ${URLPREPROD}    https://vendas-preprod.martinsatacado.com.br/

${idrede}     //input[contains(@placeholder,'Digite o ID de rede')]
${SenhaRede}       //input[@type='password']
${BtnContinuar}    //button[contains(.,'Continuar')]
${INPUTCodCliente}      //input[@type='text']
${ICONsearchCliente}     search-icon-button
${BtnCupom}     //span[contains(.,'CASHBACK MUNDIAL 4%')]
${Btnqtdade}    //input[@aria-invalid='false'][contains(@id,'110347')]

${INPUTbuscaProd}    //input[@type='text']
${BtnMenu}            //button[@id='open-menu-button']
${BTNRealizarVenda}    new-sale-button
${BtnAdcCarrinhoPLP}        //button[@data-testid='add-product-cart']
${BtnAdcCarrinhoPDP}        //button[contains(.,'Adicionar ao carrinho')]

${CHECKBOXlupaBuscaProd}    //div[@data-testid='checkbox']
# ${BtnCarrinho}            //button[@aria-label='Ícone Carrinho']
${BtnCarrinho}            //button[@aria-label='Ícone Carrinho']
${BtnFinalizarPedido}    //button[contains(.,'Finalizar Pedido')]
${PedidoRealizado}        //h4[contains(.,'Pedido realizado com sucesso!')]
${TXTcomplementoDeCarga}        //h4[contains(.,'Pedido de complemento de carga realizado com sucesso!')]

${TXT111}    (//span[contains(.,'111 - PGT. À VISTA')])[2]  
${BtnFormaDePagamento}    (//span[contains(@class,'MuiButton-label')])[3]


${BTNBoletoAvista}    //button[contains(.,'Boleto à vista')]
${BtnPgtoantecipado}     (//p[contains(.,'Pagamento Antecipado')])[2]
${Btnaplicarcondpagamento}   //button[contains(.,'Aplicar')]
${BTNnegociacoes}    //span[@class='sc-a5de7a8c-10 sc-2bb44b42-5 eIQSuj hjDPll'][contains(.,'Negociações, nota fiscal e boletos por cliente')]
# ${BTNnegociacoesDIV}   id="/vendas/negociacoes"
${BTNnegociacoesDIV}   /vendas/negociacoes

${TXTnegociacoesCAMPO}    (//p[contains(.,'CAMPO')])[1]
${TXTnegociaoesPT100019}    (//p[contains(.,'PT100019')])[1]
${TXTnegociaoesEVALDOF}        (//p[contains(.,'EVALDOF')])[1]
${TXTnegociaoesTECMARKUS}        (//p[contains(.,'tec.markus1@gmail.com')])[1]



${BTNnegociacao}    /html/body/script[17]
${tela}    //div[@class='MuiBackdrop-root']
${ICONcomplementoCarga}    icone-complemento-carga
${BTNprosseguir}    //button[contains(.,'Prosseguir')] 
${SCREENcomplCarga}    //h5[contains(.,'Comp. Carga')]
