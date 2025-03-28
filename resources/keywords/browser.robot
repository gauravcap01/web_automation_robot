*** Settings ***
Library    SeleniumLibrary
Library    ../resources/keywords/driver_manager.py
Variables  ../configs/config.yaml

*** Keywords ***

Open Browser With Config
    [Documentation]    Open browser with config settings and using configuration with compatible ChromeDriver
    ${driver}=    Evaluate    driver_manager.get_edge_driver()    modules=driver_manager
    # Open the browser with the correct driver
    Open Browser    ${base_url}    Edge    service=${driver}
    Maximize Browser Window
    Set Selenium Speed    0.2s
    Set Screenshot Directory    ${screenshot_dir}

Set Browser
    [Arguments]    ${browser_type}
    Open Browser    ${base_url}    ${browser_type}
    Maximize Browser Window

Go To Base URL
    Go To    ${base_url}

Close Browser
    #Capture Page Screenshot
    Close Browser
