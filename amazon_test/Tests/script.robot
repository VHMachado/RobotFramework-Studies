*** Settings ***
Documentation               Amazon Tests
Library                     SeleniumLibrary

*** Test Cases ***
User must sign in to check out
    [Tags]                          id:1

    Open Browser                    https://www.amazon.com.br/        chrome
    Wait Until Page Contains        Acesse uma conta para ter a melhor experiência

    Input Text                      id=twotabsearchtextbox            amaciante downy
    Click Button                    id=nav-search-submit-button

    Wait Until Page Contains        resultados para "amaciante downy"
    Click Element                   //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a




