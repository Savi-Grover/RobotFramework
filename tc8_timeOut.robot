*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
Testing Timeout
    open browser    ${url}  ${browser}
    maximize browser window

    ## get default [timeout]
    ${time}=        get selenium timeout
    log to console      ${ time }

    ## set value of timeout more than default [timeout]
    set selenium timeout        10 seconds

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

    close browser
    ## test will pass without speed, but not visible each step

*** Keywords ***

