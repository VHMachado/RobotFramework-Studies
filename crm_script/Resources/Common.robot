*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Initialize web test
    [Arguments]                             ${BROWSER}

    Set Selenium Timeout                    5 seconds
    Open Browser                            about:blank        ${BROWSER}
    Maximize Browser Window

End web test
    Sleep                                   3 seconds
    Close Browser
