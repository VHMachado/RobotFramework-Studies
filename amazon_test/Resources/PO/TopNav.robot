*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${SEARCH BAR}=  id=twotabsearchtextbox
${SEARCH BUTTON}=  id=nav-search-submit-button

*** Keywords ***
Type search text
    Input Text                      ${SEARCH BAR}            ${SEARCH TERM}

Submit search
    Click Button                    ${SEARCH BUTTON}
