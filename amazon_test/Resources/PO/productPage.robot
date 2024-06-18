*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Verify page loaded
    Wait Until Page Contains        Voltar aos resultados

Click the "add to cart" button
    Click Button                    id=add-to-cart-button
