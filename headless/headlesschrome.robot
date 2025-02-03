*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  headlesschrome
${url}      https://demowebshop.tricentis.com/register


*** Test Cases ***
Testing Close Browser
    open browser    ${url}  ${browser}
    maximize browser window

    open browser    https://www.google.com     chrome
    maximize browser window

    ##close browser
    ##close will first close recent open browser window

    close All browsers
    ##will close all browsers window


*** Keywords ***

