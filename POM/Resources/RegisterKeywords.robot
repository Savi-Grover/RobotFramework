*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords ***
open my browser
    [Arguments]     ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    Maximize Browser Window

Click Register Link
    click link  ${link_Reg}

Enter personal Details
    [Arguments]     ${tc_fname}    ${tc_lname}    ${tc_phone}       ${tc_email}
    Input Text      ${txt_fname}        ${tc_fname}
    Input Text      ${txt_lname}        ${tc_lname}
    Input Text      ${txt_phone}        ${tc_phone}
    Input Text      ${txt_email}        ${tc_email}

Enter address Details
    [Arguments]     ${tc_address1}    ${tc_city}    ${tc_state}       ${tc_postalCode}    ${tc_cntry}
    Input Text      ${txt_address1}     ${tc_address1}
    Input Text      ${txt_city}         ${tc_city}
    Input Text      ${txt_state}        ${tc_state}
    Input Text      ${txt_postalCode}   ${tc_postalCode}
    select from list by label       ${drp_country}      ${tc_cntry}

Enter Email Password
    [Arguments]     ${tc_email}    ${tc_password}    ${tc_confirmPassword}
    Input Text      ${txt_email}                   ${tc_email}
    Input Text      ${txt_password}                ${tc_password}
    Input Text      ${txt_confirmPassword}         ${tc_confirmPassword}

Enter Submit
    click button       ${btn_submit}


Verify Successful Signup
    Wait Until Page Contains 	Thank you for registering. You may now sign-in using the user name and password you've just entered.    6 seconds

Close my browsers
    close all browsers