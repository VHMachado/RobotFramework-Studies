*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${emailBar} =  id=EmailAddress
${customerNameBar} =  id=FirstName
${customerLastNameBar} =  id=LastName
${customerCityBar} =  id=City
${customerStateList} =  id=StateOrRegion
${customerGenderButton} =  gender
${acceptPromoBox} =  promos-yes

${customerName} =  Noah
${customerLastName} =  Smith
${customerCity} =  Seattle
${customerState} =  WA
${customerGender} =  male

*** Keywords ***
Type customer email
    Wait Until Page Contains               Add Customer
    Input Text                             ${emailBar}                ${NEW CLIENT EMAIL}

Type customer first name
    Input Text                             ${customerNameBar}           ${customerName}

Type customer last name
    Input Text                             ${customerLastNameBar}       ${customerLastName}

Type customer city
    Input Text                             ${customerCityBar}           ${customerCity}

Select customer state
    Select From List By Value              ${customerStateList}         ${customerState}

Select gender
    Select Radio Button                    ${customerGenderButton}      ${customerGender}

Optionally check promotion checkbox
    Select Checkbox                        ${acceptPromoBox}

Click "Submit" button
# Expected Result: Customer success page loads
    Click Button                           Submit
