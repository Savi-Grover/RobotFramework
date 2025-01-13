*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/login?returnUrl=%2F


*** Test Cases ***
LoginTest
    ##SeleniumLibrary.Create Webdriver    Chrome          executable_path=C:\Users\savig\Downloads\chromedriver-win64\chromedriver-win64\chromedriver
    open browser    ${url}  ${browser}
    click link  xpath://a[@class='ico-login']
    input text      id:Email    savi@yopmail.com
    input text      id:Password     Savi@123
    click element   xpath://div[@id="main"]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    close browser

*** Keywords ***
