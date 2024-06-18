*** Settings ***
Documentation               Amazon Tests
Library                     SeleniumLibrary
Resource                    ../Resources/Common.robot
Resource                    ../Resources/Amazon.robot

Test Setup                  Initialize web test
Test Teardown               Finalize web test

*** Test Cases ***
User must sign in to check out
    [Tags]                          id:1

    Search for a product
    Open product page
    Add product to cart
    Proceed to Checkout





