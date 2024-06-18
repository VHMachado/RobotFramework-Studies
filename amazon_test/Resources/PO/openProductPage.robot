*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Click on the first search result
    Wait Until Page Contains        resultados para "amaciante downy"
    Click Element                   //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
