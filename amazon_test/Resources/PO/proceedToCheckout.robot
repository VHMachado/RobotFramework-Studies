*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Click the "Proceed to Checkout" button
    Click Button                    name=proceedToRetailCheckout
    Wait Until Page Contains        Fazer login
