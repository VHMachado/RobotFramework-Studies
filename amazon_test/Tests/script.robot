*** Settings ***
Documentation               Amazon Tests
Library                     SeleniumLibrary

*** Test Cases ***
User must sign in to check out
    [Tags]                          id:1

    Open Browser                    https://www.amazon.com.br/        chrome
    Wait Until Page Contains        Olá, faça seu login    timeout=10s

    Input Text                      id=twotabsearchtextbox            amaciante downy
    Click Button                    id=nav-search-submit-button

    Wait Until Page Contains        resultados para "amaciante downy"
    Click Element                   //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
    Wait Until Page Contains        Downy Brisa Suave Amaciante Concentrado 3L

    Click Button                    id=add-to-cart-button
    Wait Until Page Contains        Adicionado ao carrinho

    Click Button                    name=proceedToRetailCheckout
    Wait Until Page Contains        Fazer login
    Close Browser





