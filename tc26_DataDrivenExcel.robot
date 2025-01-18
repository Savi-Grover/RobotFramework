*** Settings ***
Library  SeleniumLibrary
Resource    tc24_loginResouces.robot
Library     DataDriver      TestData/TestDataRobot.xlsx     sheet_name=Sheet1

## to call opening and closing browser just once
Suite Setup  Open test Browser
Suite Teardown  Close test Browsers
Test Template  Invalid Login

## specify all invalid login cases
*** Test Cases ***
LoginTestWithExcel1          ${username}          ${password}
LoginTestWithExcel2          ${username}          ${password}
LoginTestWithExcel3          ${username}          ${password}


## making test case related keywords using resources keywords
*** Keywords ***
Invalid Login
        [Arguments]         ${username}         ${password}
        Input username      ${username}
        Input password      ${password}
        click login button
        BuiltIn.sleep           1
        Check error message
        BuiltIn.sleep           1