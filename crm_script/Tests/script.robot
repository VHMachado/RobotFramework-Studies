*** Settings ***
Documentation               Informations about the whole test SUITE
Resource                    ../Resources/Common.robot
Resource                    ../Resources/crm.robot

Test Setup                  Initialize web test
Test Teardown               End web test

*** Variables ***
${BROWSER} =  firefox
${HOME PAGE URL} =  https://automationplayground.com/crm/index.html
${USER EMAIL} =  admin@robotframeworktutorial.com
${USER PASSWORD} =  qwe
${NEW CLIENT EMAIL} =  newuser@robot.com

*** Test Cases ***
Should be able to add new customer
    [Documentation]                         Informations about the TEST
    [Tags]                                  1006        Smoke        Contacts

    crm.Access Homepage
    crm.Sign In
    crm.Register a new client
    crm.Sign Out
