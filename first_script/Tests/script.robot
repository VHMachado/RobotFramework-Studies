*** Settings ***
Documentation               Informations about the whole test SUITE
Library                     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to add new customer
    [Documentation]                         Informations about the TEST
    [Tags]                                  id:1006    type:Smoke    feature:Contacts

    # Initialize Selenium
    Set Selenium Speed                      .2 seconds
    Set Selenium Timeout                    5 seconds

    # Pre-Conditions
    Log                                     Test Case's Pre-Conditions

    # 1. Open web browser
    # Expected result: Browser opens successfully
    Log                                     1. Open Web Browser
    Open Browser                            https://automationplayground.com/crm/index.html        chrome
    Wait Until Page Contains                Customers Are Priority One!

    # 2. Navigate to home page address
    # Expected result: Home page loads
    Log                                    2. Navigate to home page address

    # 3. Click "Login" link
    # Expected result: Login page loads
    Log                                    3. Click "Login" link
    Click Link                             id=SignIn
    Wait Until Page Contains               Login

    # 4. Type valid login credentials
    Log                                    4. Type valid login credentials
    Input Text                             id=email-id         admin@robotframeworktutorial.com
    Input Password                         id=password         qwe

    # 5. Click "Submit" button
    # Expected result: "Customers" page loads
    Log                                    5. Click "Submit" button
    Click Button                           id=submit-id
    Wait Until Page Contains               Our Happy Customers

    # Test Case's Steps
    # 1. Click "New Customer" button
    # Expected Result: "Add customer" page loads
    Log                                    1. Click "New Customer" button
    Click Link                             id=new-customer
    Wait Until Page Contains               Add Customer

    # 2. Type customer email
    Log                                    2. Type customer email
    Input Text                             id=EmailAddress      user@rfwtutorial.com

    # 3. Type customer first name
    Log                                    3. Type customer first name
    Input Text                             id=FirstName         Noah

    # 4. Type customer last name
    Log                                    4. Type customer last name
    Input Text                             id=LastName          Smith

    # 5. Type customer city
    Log                                    5. Type customer city
    Input Text                             id=City              Seattle

    # 6. Select customer state
    Log                                    6. Select customer state
    Select From List By Value              id=StateOrRegion     WA

    # 7. Select gender
    Log                                    7. Select gender
    Select Radio Button                    gender               male

    # 8. Optionally check promotion checkbox
    Log                                    8. Optionally check promotion checkbox
    Select Checkbox                        promos-yes

    # 9. Click "Submit" button
    # Expected Result: Customer success page loads
    Log                                    9. Click "Submit" button
    Click Button                           Submit
    Wait Until Page Contains               Success! New customer added.


    # Test Case's Post-Conditions
    # Expected Result: Browser is Closed
    Sleep                      3 seconds
    Close Browser

*** Keywords ***
