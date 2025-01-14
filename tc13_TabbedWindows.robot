*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Handling Tabbed Windows
    open browser    ${url}  ${browser}
    maximize browser window

    ## click on button which leads to tab
    click element       xpath://div[@id="Tabbed"]/a/button
    BuiltIn.Sleep       2

    ${allWindows}=      get window handles
    log to console        ${allWindows}
    ## to bring control to new tab- use name/title/url of window you want to select
    switch browser     url=https://www.selenium.dev/


    ## perform operations on new window
    click element      xpath://div[@id="main_navbar"]/ul/li[2]/a
    BuiltIn.Sleep       2

    close all browsers


*** Keywords ***

