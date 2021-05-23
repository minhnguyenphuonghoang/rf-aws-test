*** Settings ***

Resource  Env_Variables.robot
Resource  ../Locators/Common_Locators.robot

*** Keywords ***

Go To The My Page Menu

    # Wait Element - My Page menu
    Wait Until Element Is Visible      ${My_Page_Menu}        ${TIME_OUT}
    Click Link   ${My_Page_Menu}