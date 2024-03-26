*** Settings ***
Documentation  teste pipeline
Resource       keywords.robot
Resource       keywords_pedidos.robot
Metadata    Charset    UTF-8

Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***


# Caso de teste 03 - Vendas net
#     [Tags]    PedidoAvista
#     Dado que eu faça o login no vendas net
#     Faço login e insiro o cod do cliente 777778
#     Clico em novo pedido
#     Adiciono a Forma de pagamento "111"
#     Busco pelo produto (VN) "2223049"
#     Adiciono 1 unidade
#     Clico em ir para o carrinho
#     Sem aplicar desconto clico em prosseguir e confirmar
#     Entao visualizo a tela de historico de pedidos

Caso de teste 03 - Integração vendas net - Complemento de carga
    [Tags]    PedidoPrazo
    Dado que eu faça o login no vendas net
    Faço login e insiro o cod do cliente "8813915"
    Clico em novo pedido
    Adiciono a Forma de pagamento "1621"
    Busco pelo produto (VN) "2223047"  
    Adiciono 1 unidade
    Clico em ir para o carrinho
    Sem aplicar desconto clico em prosseguir e confirmar
    Entao visualizo a tela de historico de pedidos

Caso de teste 04 - Complemento de carga canal canal CAMPO
    [Tags]    ComplementoDeCargaPedidoPortalCAMPO
    Dado que eu faça o login no portal operador
    Insiro o codigo do cliente "777778"
    Acesso o menu
    Clico em Negociações
    E na negociação com complemento de carga, e acesso complemento de carga CAMPO
    Adiciono o produto "206168"
    Vou para o carrinho
    Clico no botão continuar
    Clico no botão Finalizar pedido
    Será exibida a mensagem "Pedido de complemento de carga realizado com sucesso!" ao finalizar complemento de carga


Caso de teste 05 - Integração portal cliente final - Complemento de carga
    [Documentation]  Pedido pelo fluxo da PDP, atualização de estoque e verificação da internalização no banco de dados
    [Tags]           PedidoAprazoPortalClienteFinal
    Dado que eu faça o login no portal martins homologação (Tejotão) "tec.markus1@gmail.com"
    Verifico/altero forma de pagamento para boleto a prazo
    Quando faço a busca por produto "martins_217800"
    E acesso a PDP do produto para ver mais detalhes
    E adiciono o produto ao carrinho
    E acesso o carrinho
    E Adiciono "10" unidades do produto
    E clico em continuar ir para cupons e beneficios
    Não quero utilizar o saldo bem 
    E clico em ir para revisão e pagamento
    E clico em Declaro que li e concordo com os termos e politicas
    E clico em finalizar
    Então o pedido é concluído


Caso de teste 06 - Complemento de carga canal b2b
    [Tags]    ComplementoDeCargaPedidob2b
    Dado que eu faça o login no portal operador
    Insiro o codigo do cliente "424576"
    Acesso o menu
    Clico em Negociações
    E na negociação com complemento de carga, e acesso complemento de carga B2B
    Adiciono o produto "206168"
    Vou para o carrinho
    Clico no botão continuar
    Clico no botão Finalizar pedido
    Será exibida a mensagem "Pedido de complemento de carga realizado com sucesso!" ao finalizar complemento de carga










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