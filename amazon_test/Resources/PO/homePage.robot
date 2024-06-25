*** Settings ***
Library            SeleniumLibrary

*** Variables ***

*** Keywords ***
Access Homepage
    Go To                           ${HOMEPAGE URL}

Verify page loaded
    Wait Until Page Contains        Olá, faça seu login    timeout=10s
