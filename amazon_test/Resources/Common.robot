*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Initialize web test
    Open Browser                    https://www.amazon.com.br/        chrome
    Maximize Browser Window

Finalize web test
    Close Browser
