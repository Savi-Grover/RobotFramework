*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
open my browser
    [Arguments]     ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]     ${UserName}
    Input Text      ${txt_login_username}   ${UserName}

Enter Password
    [Arguments]     ${UserPassword}
    Input Text      ${txt_login_password}   ${UserPassword}

Click Signin
    click button    ${btn_signIn}

Verify Successful Login
    Wait Until Page Contains 	Login Successfully

Close my browsers
    close all browsers