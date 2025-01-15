*** Settings ***
Library  SeleniumLibrary
Resource       resources.robot

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.guru99.com/test/newtours/
${url1}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
User Keywords with Arguments

    ${PageResponse}=    launchBrowser       ${url}      ${browser}
    log to console      ${PageResponse}
    login
    close browser
