*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Click login button
    # Click "Login" link
    # Expected result: Login page loads
    Wait Until Page Contains                Customers Are Priority One!
    Click Link                             id=SignIn

Type login credentials
    # Type valid login credentials
    Wait Until Page Contains               Login
    Input Text                             id=email-id         admin@robotframeworktutorial.com
    Input Password                         id=password         qwe

Click "Submit" button
    # Click "Submit" button
    # Expected result: "Customers" page loads
    Click Button                           id=submit-id

