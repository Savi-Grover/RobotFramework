*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
Testing Speed
    open browser    ${url}  ${browser}
    maximize browser window

    ## default speed is 0 ; on setting will be used before executing all commands - speed for all steps
    SeleniumLibrary.Set Selenium Speed     2seconds

    ## get default selenium speed
    ${speed}=       get selenium speed
    log to console    ${speed}

    ## time out - is used when we need to wait for certain condition
    wait until page contains        Register

    ## radio
    select radio button     Gender     M

    ## input text
    input text      name:FirstName      John
    input text      name:LastName       Smith
    input text      name:Email          John@yopmail.com
    input text      name:Password       johnsmith
    input text      name:ConfirmPassword    johnsmith

    ## only sleep/pause for one time
    BuiltIn.Sleep       2

    close browser
    ## test will pass without speed, but not visible each step

*** Keywords ***

