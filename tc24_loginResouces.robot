*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


    ##define user defined keywords for common code
*** Keywords ***
Open test Browser
    open browser     ${url}          ${browser}
    maximize browser window

Close test Browsers
    close all browsers

Open Login Page
    go to ${url}

Input username
    [Arguments]     ${username}
    input text      xpath://div[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input        ${username}

Input password
    [Arguments]     ${passwd}
    input text      xpath://div[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input     ${passwd}

click login button
    click element   xpath://div[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

click logout button
    click element     xpath://div[@id="app"]/div[1]/div[1]/header/div[1]/div[3]/ul/li/span/i
    click element       xpath:////div[@id="app"]/div[1]/div[1]/header/div[1]/div[3]/ul/li/ul/li[4]/a
Check error message
    page should contain     Invalid credentials

Check Success Page
    page should contain     Dashboard
