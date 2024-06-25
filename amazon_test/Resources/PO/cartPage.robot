*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${PROCEED TO CHECKOUT BUTTON}=  name=proceedToRetailCheckout

*** Keywords ***
Verify page loaded
    Wait Until Page Contains        Adicionado ao carrinho

Click the "Proceed to Checkout" button
    Click Button                    ${PROCEED TO CHECKOUT BUTTON}
