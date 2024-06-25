*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/homePage.robot
Resource           ./PO/TopNav.robot
Resource           ./PO/searchPage.robot
Resource           ./PO/productPage.robot
Resource           ./PO/cartPage.robot
Resource           ./PO/loginPage.robot

*** Keywords ***
Access Homepage
    homePage.Access Homepage
    homePage.Verify page loaded

Search for a product
    topNav.Type search text
    topNav.Submit search
    searchPage.Verify page loaded

Open product page
    searchPage.Click on search result
    productPage.Verify page loaded
Add product to cart
    productPage.Click on "Add to Cart" button
    cartPage.Verify page loaded

Proceed to Checkout
    cartPage.Click the "Proceed to Checkout" button
    loginPage.Verify page loaded



