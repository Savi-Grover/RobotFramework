*** Settings ***
Library  SeleniumLibrary
Resource     ../Resources/LoginKeywords.robot

*** Variables ***
${SiteUrl}      https://demo.guru99.com/test/newtours/
${Browser}      chrome
${UserName}     sg
${UserPassword}     12


*** Test Cases ***
Login Test
    open my browser     ${SiteUrl}      ${Browser}
    Enter UserName      ${UserName}
    Enter Password      ${UserPassword}
    Click Signin
    BuiltIn.Sleep   3
    Verify Successful Login
    Close my browsers