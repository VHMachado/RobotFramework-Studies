*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${SignInButton} =  id=SignIn

*** Keywords ***
Click "Sign In" button
    # Click "Login" link
    # Expected result: Login page loads
    Wait Until Page Contains                Customers Are Priority One!
    Click Link                              ${SignInButton}
