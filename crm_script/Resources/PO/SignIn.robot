*** Settings ***
Library            SeleniumLibrary

*** Keywords ***
Click login button
    # Click "Login" link
    # Expected result: Login page loads
    Click Link                             id=SignIn
    Wait Until Page Contains               Login

Type login credentials
    # Type valid login credentials
    Input Text                             id=email-id         admin@robotframeworktutorial.com
    Input Password                         id=password         qwe

Click "Submit" button
    # Click "Submit" button
    # Expected result: "Customers" page loads
    Click Button                           id=submit-id
    Wait Until Page Contains               Our Happy Customers
