*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Click on the "add to cart" button
    Wait Until Page Contains        Voltar aos resultados
    Click Button                    id=add-to-cart-button
    Wait Until Page Contains        Adicionado ao carrinho
