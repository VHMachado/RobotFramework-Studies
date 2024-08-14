*** Settings ***
Documentation               Test Case for the Desktop page of Front Office
Resource                    ../Resources/Common_Desktop.robot
Resource                    ../Resources/Front_Office_Desktop.robot
Test Setup                  Common_Desktop.Begin web test        ${BROWSER}
Test Teardown               Common_Desktop.End web test

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =             chrome
${HOME PAGE URL} =       https://automationplayground.com/front-office/

*** Test Cases ***
Front_Office_Desktop.Should be able to access "Team" page
    [Documentation]    Checks if the user is able to access the "Team" page
    [Tags]             step1

Front_Office_Desktop."Team" page should match requirements
    [Documentation]    Checks if the "Team" page is working properly
    [Tags]             step2
