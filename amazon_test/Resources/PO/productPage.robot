*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${ADD TO CART BUTTON} =  xpath=//*[@id="add-to-cart-button"]

*** Keywords ***
Verify page loaded
    Wait Until Page Contains        Voltar aos resultados

Click on "Add to Cart" button
    Click Element                   ${ADD TO CART BUTTON}
