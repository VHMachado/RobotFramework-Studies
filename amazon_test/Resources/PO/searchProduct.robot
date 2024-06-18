*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Search product
    Wait Until Page Contains        Olá, faça seu login    timeout=10s
    Input Text                      id=twotabsearchtextbox            amaciante downy
    Click Button                    id=nav-search-submit-button
