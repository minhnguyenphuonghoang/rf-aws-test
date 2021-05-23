*** Settings ***
Resource   ../Resources/Login_KW.robot
Resource   ../Resources/Menu_KW.robot
Variables  ../Data/My_Page.yaml

Suite Setup        Run Keywords    Open The Admin Application       ${C7121.URL_PAGE}       ${C7121.BROWSER}
...                AND     The User Logins To the System    ${C7121.USERNAME}      ${C7121.PASSWORD}

Suite Teardown     Close All Browsers


*** Test Cases ***
C7121_Verify the full name cannot be empty
    Go To The My Page Menu
    Capture Page Screenshot

