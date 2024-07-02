*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/homePage.robot
Resource           ./PO/topNav.robot
Resource           ./PO/loginPage.robot
Resource           ./PO/customersList.robot
Resource           ./PO/addCustomer.robot

*** Keywords ***
Access Homepage
    homePage.Access Homepage

Sign In
    topNav.Click "Sign In" button
    loginPage.Type login credentials
    loginPage.Click "Submit" button

Register a new client
    customersList.Click "New Customer" button
    addCustomer.Type customer email
    addCustomer.Type customer first name
    addCustomer.Type customer last name
    addCustomer.Type customer city
    addCustomer.Select customer state
    addCustomer.Select gender
    addCustomer.Optionally check promotion checkbox
    addCustomer.Click "Submit" button
    customersList.Verify if new customer was added

Sign Out
    customersList.Click "Sign Out" button
