*** Settings ***
Documentation               Amazon Tests
Library                     SeleniumLibrary
Resource                    ../Resources/Common.robot
Resource                    ../Resources/AmazonWebPage.robot

Test Setup                  Initialize web test
Test Teardown               Finalize web test

*** Test Cases ***
User can search for products
    [Tags]    id:1
    AmazonWebPage.Access Homepage
    AmazonWebPage.Search for a product

User must sign in to check out
    [Tags]    id:2

    AmazonWebPage.Access Homepage
    AmazonWebPage.Search for a product
    AmazonWebPage.Open product page
    AmazonWebPage.Add product to cart
    AmazonWebPage.Proceed to Checkout





