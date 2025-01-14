*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    SeleniumLibrary.Set Selenium Speed     2seconds
    ## format of radio button - name of radio ; value of radio button
    select radio button     radioButton     radio2

    ##select checkbox     name = checkBoxOption1
    select checkbox     checkBoxOption1

    unselect checkbox   checkBoxOption1


    close browser

*** Keywords ***

