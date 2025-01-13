*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/login?returnUrl=%2F


*** Test Cases ***
TestInputBox
    ##SeleniumLibrary.Create Webdriver    Chrome          executable_path=C:\Users\savig\Downloads\chromedriver-win64\chromedriver-win64\chromedriver
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store. Login
    click link     xpath://a[@class='ico-login']
    ${email_element}    set variable    xpath://input[@id="Email"]
    element should be visible   ${email_element}
    element should be enabled   ${email_element}
    input text     ${email_element}    savi@yopmail.com
    clear element text  ${email_element}
    close browser

*** Keywords ***

