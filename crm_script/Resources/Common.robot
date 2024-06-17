*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Initialize web test
    Set Selenium Speed                      .2 seconds
    Set Selenium Timeout                    5 seconds

    # Open web browser
    # Expected result: Browser opens successfully
    Open Browser                            https://automationplayground.com/crm/index.html        chrome
    Maximize Browser Window
    Wait Until Page Contains                Customers Are Priority One!

End web test
    # Close web browser
    # Expected Result: Browser is Closed
    Sleep                                   3 seconds
    Close Browser
