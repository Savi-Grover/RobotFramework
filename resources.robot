*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
## user keyword with no arguments
launchBrowser
     [Arguments]    ${appurl}   ${appbrowser}
     open browser   ${appurl}   ${appbrowser}
     maximize browser window
     ${title}=      get title
     RETURN      ${title}
login
## interact
     input text      name:userName   mercury
     input text      name:password   mercury
