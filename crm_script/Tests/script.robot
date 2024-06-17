*** Settings ***
Documentation               Informations about the whole test SUITE
Resource                    ../Resources/Common.robot
Resource                    ../Resources/crm.robot

Test Setup                  Initialize web test
Test Teardown               End web test

*** Test Cases ***
Should be able to add new customer
    [Documentation]                         Informations about the TEST
    [Tags]                                  id:1006        type:Smoke        feature:Contacts

    crm.Sign In
    crm.Register a new client
