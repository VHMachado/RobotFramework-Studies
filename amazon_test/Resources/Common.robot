*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Initialize web test
    Open Browser                about:blank        ${BROWSER}
    Maximize Browser Window

Finalize web test
    Close Browser
