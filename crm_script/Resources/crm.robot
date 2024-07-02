*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/homePage.robot
Resource           ./PO/topNav.robot
Resource           ./PO/loginPage.robot
Resource           ./PO/customersList.robot
Resource           ./PO/addCustomer.robot

*** Keywords ***
Access Homepage
    [Arguments]                                     ${HOME PAGE URL}
    homePage.Access Homepage                        ${HOME PAGE URL}

Sign In
    [Arguments]                                     ${USER EMAIL}    ${USER PASSWORD}

    topNav.Click "Sign In" button
    loginPage.Type login credentials                ${USER EMAIL}    ${USER PASSWORD}
    loginPage.Click "Submit" button

Register a new client
    [Arguments]                                    ${NEW CLIENT EMAIL}

    customersList.Click "New Customer" button
    addCustomer.Type customer email                ${NEW CLIENT EMAIL}
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
