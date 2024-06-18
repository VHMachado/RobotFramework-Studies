*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Verify page loaded
    Wait Until Page Contains        Adicionado ao carrinho

Click the "Proceed to Checkout" button
    Click Button                    name=proceedToRetailCheckout
