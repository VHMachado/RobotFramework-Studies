*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/SignIn.robot
Resource           ./PO/registerClient.robot

*** Keywords ***
Sign In
    Click login button
    Type login credentials
    SignIn.Click "Submit" button

Register a new client
    Click "New Customer" button
    Type customer email
    Type customer first name
    Type customer last name
    Type customer city
    Select customer state
    Select gender
    Optionally check promotion checkbox
    registerClient.Click "Submit" button
