*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Results
    [Arguments]    ${expected_result}
    Wait Until Page Contains    ${expected_result}    timeout=5s
    Page Should Contain    ${expected_result}
