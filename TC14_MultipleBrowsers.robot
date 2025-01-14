*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Windows.html
${url1}      https://www.google.com

*** Test Cases ***
Handling Multiple Browsers
    open browser    ${url}  ${browser}
    maximize browser window

    BuiltIn.sleep     2

    open browser    ${url1}  ${browser}
    maximize browser window

    ${title1}=      get title
    log to console      ${title1}

    ##swicth between 2 browsers using index/title
    switch browser      2

     ${title2}=      get title
    log to console      ${title2}
    BuiltIn.sleep     2

    close all browsers

*** Keywords ***

