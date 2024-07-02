*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Access Homepage
    [Arguments]          ${HOME PAGE URL}

    Go To                ${HOME PAGE URL}
