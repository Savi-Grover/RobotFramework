*** Settings ***
Library  SeleniumLibrary
Resource     ../Resources/RegisterKeywords.robot

*** Variables ***
${SiteUrl}      https://demo.guru99.com/test/newtours/
${Browser}      chrome
${tc_Reg}           REGISTER
${tc_fname}         sav
${tc_lname}         sav
${tc_phone}         201
${tc_email}         sav1@yopmail.com
${tc_address1}      785 Fairbanck st
${tc_city}          FairBanks
${tc_state}         Alaska
${tc_postalCode}    78451
${tc_cntry}         UNITED STATES
${tc_email}         sav1@yopmail.com
${tc_password}      sav12
${tc_confirmPassword}   sav12

*** Test Cases ***
Registeration Test
    open my browser     ${SiteUrl}      ${Browser}
    Click Register Link
    Enter personal Details      ${tc_fname}     ${tc_lname}    ${tc_phone}      ${tc_email}
    BuiltIn.Sleep   3
    Enter address Details       ${tc_address1}   ${tc_city}     ${tc_state}     ${tc_postalCode}    ${tc_cntry}
    BuiltIn.Sleep   3
    Enter Email Password        ${tc_email}     ${tc_password}  ${tc_confirmPassword}
    Enter Submit
    BuiltIn.Sleep   5
    Verify Successful Signup
    Close my browsers