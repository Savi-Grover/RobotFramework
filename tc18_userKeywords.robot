*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.guru99.com/test/newtours/
${url1}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
User Keywords with Arguments

    ${PageResponse}=        launchBrowser       ${url}      ${browser}
    log to console      ${PageResponse}
    login
    close browser

*** Keywords ***
## user keyword with no arguments
launchBrowser
     [Arguments]    ${appurl}   ${appbrowser}
     open browser    ${appurl}  ${appbrowser}
     maximize browser window
     ${title}=      get title
     [Return]       ${title}
login
## interact
     input text      name:userName   mercury
     input text      name:password   mercury
