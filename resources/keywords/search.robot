*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/google_locators.robot

*** Keywords ***
Enter Search Term
    [Arguments]    ${term}
    Input Text    ${SEARCH_INPUT}    ${term}

Submit Search
    Press Keys    ${SEARCH_INPUT}    ENTER
