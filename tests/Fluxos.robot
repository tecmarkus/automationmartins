*** Settings ***
Documentation  teste pipeline
Resource       keywords.robot
Resource       keywords_pedidos.robot
Metadata    Charset    UTF-8

Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***


Caso de teste 01 - Pedido
    [Tags]    Pedido
    Dado que eu faça o login no portal operador
    Insiro o codigo do cliente "8233541"
    Acesso o menu e inicío nova venda
    Adiciono o produto "2222417"
    Vou para o carrinho
    Clico no botão continuar
    Clico no botão Finalizar pedido
    Será exibida a mensagem "Pedido realizado com sucesso!" 


Caso de teste 02 - Pedido boleto à vista
    [Tags]    PedidoBoletoaVista
    Dado que eu faça o login no portal operador
    Insiro o codigo do cliente "8233541"
    Acesso o menu e inicío nova venda
    Verifico a forma de pagamento e altero para boleto à vista
    Adiciono o produto "2222417"
    Vou para o carrinho
    Clico no botão continuar
    Clico no botão Finalizar pedido
    Será exibida a mensagem "Pedido realizado com sucesso!"




    












# ***************verificar xpath \Eement 'Meio de pagamento de prefer�ncia'***


# ANA@laine9993






# Caso de teste cupom
#     Dado que eu faça o login no portal operador
#     E insiro o codigo do cliente "1209872"
#     E clico em cupom
    # E adiciono no carrinho na tela de cupons





# Caso de teste 02 - Sucesss
#     Set Selenium Timeout    10
#     Dado que eu faça o login no portal operador (falha)
    # Quando acesso a pagina de login
    # E insiro os dados do cliente para login