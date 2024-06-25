*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${FIRST SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
${SECOND SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
${THIRD SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[4]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
${FOURTH SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[5]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
${FIFTH SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[6]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a
${SIXTH SEARCH RESULT}=  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[7]/div/div/div/div/span/div/div/div[2]/div[1]/h2/a

*** Keywords ***

Verify page loaded
    Wait Until Page Contains        resultados para "${SEARCH TERM}"

Click on search result
    ${result}=    Run Keyword And Ignore Error    Click Element    ${FIRST SEARCH RESULT}
    ${status}=    Set Variable    ${result}[0]

    Run Keyword If    '${status}' == 'FAIL'    ${result}=    Run Keyword And Ignore Error    Click Element    ${SECOND SEARCH RESULT}
    ${status}=    Set Variable    ${result}[0]

    Run Keyword If    '${status}' == 'FAIL'    ${result}=    Run Keyword And Ignore Error    Click Element    ${THIRD SEARCH RESULT}
    ${status}=    Set Variable    ${result}[0]

    Run Keyword If    '${status}' == 'FAIL'    ${result}=    Run Keyword And Ignore Error    Click Element    ${FOURTH SEARCH RESULT}
    ${status}=    Set Variable    ${result}[0]

    Run Keyword If    '${status}' == 'FAIL'    ${result}=    Run Keyword And Ignore Error    Click Element    ${FIFTH SEARCH RESULT}
    ${status}=    Set Variable    ${result}[0]

    Run Keyword If    '${status}' == 'FAIL'    ${result}=    Run Keyword And Ignore Error    Click Element    ${SIXTH SEARCH RESULT}
