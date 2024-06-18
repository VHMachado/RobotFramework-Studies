*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Verify page loaded
    Wait Until Page Contains        Fazer login
