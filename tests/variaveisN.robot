
*** Settings ***
Library  SeleniumLibrary
Library    Collections
Library    String
Library    BuiltIn



*** Variables ***



${URL}     https://ww6.martins.com.br/vendasnet/login.html#/
${UsuarioVendasNet}    //input[@type='text']
${SenhaVendasNet}      //input[contains(@type,'password')]
${BtnEntrarLogin}      //button[contains(.,'Entrar')]
${INPUTCodClienteVN}      //input[contains(@tabindex,'1')]
${BTNbuscarCliente}    //button[contains(.,'Buscar')]
${clienteListado8194570}        (//td[contains(.,'8194570')])[3]
${clienteListado777778}    (//td[contains(.,'8813915')])[3]
${BTNmenuVN}        (//button[@type='button'])[1]
${BTNnovoPedido}        //a[contains(.,'Novo Pedido')]      
${INPUTcondicaodePagamento}  //input[contains(@type,'text')]        
${BtnProdutos}    //button[@type='button'][contains(.,'Produtos')]
${INPUTbuscaprodVN}    //input[@name='txtProduto']
${BtnBuscarProduto}         //button[contains(.,'Buscar')]
${BTNadicionarProdVN}    //button[@data-type=' plus']
${BTNadicionarItensVN}    (//button[contains(.,'Adicionar Itens')])[2]
${ICONcarrinhoVN}    //a[@title='Carrinho']
${BTNfecharPedido}    //button[@type='button'][contains(.,'Fechar Pedido')]
${BTNnaoAplicarDesconto}    //button[contains(.,'Não Aplicar Desconto')]

${BTNconfirmarVN}    //button[@type='button'][contains(.,'Confirmar')]
${VALUEnumPedido}    (//div[@ng-show='gridViewList[i].indPedidoBaseB2BField==0'])[1]
${BTNnaoAplicarBeneficio}    //button[@class='btn btn-default'][contains(.,'Não Aplicar')]