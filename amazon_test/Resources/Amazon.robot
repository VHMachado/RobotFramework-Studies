*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/searchProduct.robot
Resource           ./PO/openProductPage.robot
Resource           ./PO/addToCart.robot
Resource           ./PO/proceedToCheckout.robot

*** Keywords ***
Search for a product
    Search product

Open product page
    Click on the first search result

Add product to cart
    Click on the "add to cart" button

Proceed to Checkout
    Click the "Proceed to Checkout" button

