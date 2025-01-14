*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Windows.html
${url1}      https://www.google.com

*** Test Cases ***
Browser Navigation
    open browser    ${url1}  ${browser}

    ${location}=        get location
    log to console  ${location}

    go to       ${url}

    ${location}=        get location
    log to console  ${location}

    go back


    ${location}=        get location
    log to console  ${location}



    close browser

*** Keywords ***

