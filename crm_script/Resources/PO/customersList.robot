*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${addNewCustomerButton} =  id=new-customer
${signOutButton} =  Sign Out

*** Keywords ***
Click "New Customer" button
    Wait Until Page Contains               Our Happy Customers
    Click Link                             ${addNewCustomerButton}

Verify if new customer was added
    Wait Until Page Contains               Success! New customer added.

Click "Sign Out" button
    Click Link                             ${signOutButton}

