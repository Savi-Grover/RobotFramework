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

    ## if any element not found - it will no such element found exception
    ## chainging firstName to firstName1 - immediately failed without waiting

    ## to fetch default implicit [timeout]
    ${implicitDefaultTime}=     get selenium implicit wait
    log to console    ${implicitDefaultTime}

    ## if we want to set implicit wait for this element
    set selenium implicit wait      10 seconds

    ## now it will wait for 10 sec to find FirstName1
    ## also implicit wait applicable for each step

    ## to fetch default implicit [timeout] after setting default waittime
    ${implicitDefaultTime}=     get selenium implicit wait
    log to console    ${implicitDefaultTime}
    ## radio
    select radio button     Gender     M

    ## input text
    input text      name:FirstName1      John
    input text      name:LastName       Smith
    input text      name:Email          John@yopmail.com
    input text      name:Password       johnsmith
    input text      name:ConfirmPassword    johnsmith

    close browser

*** Keywords ***

