*** Settings ***
Library  SeleniumLibrary
Resource    tc24_loginResouces.robot

## to call opening and closing browser just once
Suite Setup  Open test Browser
Suite Teardown  Close test Browsers
Test Template  Invalid Login

## specify all invalid login cases
*** Test Cases ***
Right user wrong passwd     Admin           admin1
Wrong user right passwd     admin1          admin123
Wrong user wrong passwd     admin1          admin1


## making test case related keywords using resources keywords
*** Keywords ***
Invalid Login
        [Arguments]   ${username}       ${passwd}
        Input username    ${username}
        Input password    ${passwd}
        click login button
        BuiltIn.sleep           3
        Check error message
        BuiltIn.sleep           3