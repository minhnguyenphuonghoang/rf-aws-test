*** Settings ***

Resource  Env_Variables.robot
Resource  ../Locators/Common_Locators.robot

*** Keywords ***
Open The Admin Application
    [Arguments]     ${url}     ${browser}
    open browser    ${url}    ${browser.lower()}
    set selenium speed    ${SELENIUM_SPEED}
    Maximize Browser Window

The User Logins To the System
    [Arguments]     ${username}     ${password}

    wait until page contains element    ${Username_Field}    ${TIME_OUT}
    Input Text    ${Username_Field}    ${username}

    Wait Until Element Is Visible    ${Password_Field}    ${TIME_OUT}
    Input Text    ${Password_Field}    ${password}

    Click Button    ${Login_Button}



*** Variables ***
${Username_Field}       email
${Password_Field}       password
${Login_Button}         //*[@id="root"]/div/div/div/div/form/p[5]/button
${My_Page_Menu}         //*[@id="root"]/div/div[2]/div[1]/ul/li[10]/a









