*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Click "New Customer" button
# Expected Result: "Add customer" page loads
    Wait Until Page Contains               Our Happy Customers
    Click Link                             id=new-customer

Type customer email
    Wait Until Page Contains               Add Customer
    Input Text                             id=EmailAddress      user@rfwtutorial.com

Type customer first name
    Input Text                             id=FirstName         Noah

Type customer last name
    Input Text                             id=LastName          Smith

Type customer city
    Input Text                             id=City              Seattle

Select customer state
    Select From List By Value              id=StateOrRegion     WA

Select gender
    Select Radio Button                    gender               male

Optionally check promotion checkbox
    Select Checkbox                        promos-yes

Click "Submit" button
# Expected Result: Customer success page loads
    Click Button                           Submit
    Wait Until Page Contains               Success! New customer added.
