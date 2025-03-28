*** Settings ***
Documentation    Google Search Automation
Resource         ../resources/keywords/browser.robot
Resource         ../resources/keywords/search.robot
Resource         ../resources/keywords/validation.robot
Library          DataDriver    ../configs/test_data.csv    encoding=utf-8    dialect=excel
#Library          DataDriver    ../configs/test_data.json
Variables        ../configs/config.yaml

Suite Setup      Open Browser With Config
Suite Teardown   Close Browser

*** Variables ***
${search_term}
${expected_result}

*** Test Cases ***
Search Test    [Template]    Execute Search
    ${search_term}    ${expected_result}



*** Keywords ***
Execute Search
    [Arguments]    ${search_term}    ${expected_result}
    Log To Console    \nRunning test with:\nSearch: ${search_term}\nExpect: ${expected_result}
    Go To Base URL
    Enter Search Term    ${search_term}
    Submit Search
    Verify Search Results    ${expected_result}

