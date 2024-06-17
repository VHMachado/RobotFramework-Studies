*** Settings ***
Library            SeleniumLibrary
Resource           ./PO/SignIn.robot
Resource           ./PO/registerClient.robot

*** Keywords ***
Sign In
    SignIn.Click login button
    SignIn.Type login credentials
    SignIn.Click "Submit" button

Register a new client
    registerClient.Click "New Customer" button
    registerClient.Type customer email
    registerClient.Type customer first name
    registerClient.Type customer last name
    registerClient.Type customer city
    registerClient.Select customer state
    registerClient.Select gender
    registerClient.Optionally check promotion checkbox
    registerClient.Click "Submit" button
