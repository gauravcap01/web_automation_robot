*** Settings ***
Documentation    Cross-browser testing
Resource         ../resources/keywords/browser.robot
Resource         ../resources/keywords/search.robot
Resource         ../resources/keywords/validation.robot
Variables        ../configs/config.yaml

*** Test Cases ***
Run In Chrome
    [Documentation]    Test in Chrome
    Set Browser    chrome
    Go To Base URL
    Enter Search Term    Robot Framework
    Submit Search
    Verify Search Results    Robot Framework

Run In Firefox
    [Documentation]    Test in Firefox
    Set Browser    firefox
    Go To Base URL
    Enter Search Term    SeleniumLibrary
    Submit Search
    Verify Search Results    Selenium
