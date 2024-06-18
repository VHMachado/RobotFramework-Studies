*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Type search text
    Input Text                      id=twotabsearchtextbox            amaciante downy

Submit search
    Click Button                    id=nav-search-submit-button
