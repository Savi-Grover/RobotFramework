*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  headlesschrome
${url}      https://demo.nopcommerce.com/login?returnUrl=%2F


*** Test Cases ***
TestInputBox
    ##SeleniumLibrary.Create Webdriver    Chrome          executable_path=C:\Users\savig\Downloads\chromedriver-win64\chromedriver-win64\chromedriver
    open browser    ${url}  ${browser}
    maximize browser window

    close browser

*** Keywords ***

