*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${SignInButton} =  id=SignIn
${SubmitSignInButton} =  id=submit-id
${inputEmailBar} =  id=email-id
${inpurPasswordBar} =  id=password

*** Keywords ***
Type login credentials
    [Arguments]                            ${USER EMAIL}    ${USER PASSWORD}

    Wait Until Page Contains               Login
    Input Text                             ${inputEmailBar}            ${USER EMAIL}
    Input Password                         ${inpurPasswordBar}         ${USER PASSWORD}

Click "Submit" button
    Click Button                           ${SubmitSignInButton}

