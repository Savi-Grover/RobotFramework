*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${url1}      https://www.google.com

*** Test Cases ***
Capture Screenshot
    open browser    ${url}  ${browser}
    maximize browser window
    BuiltIn.sleep       3
    input text      xpath://div[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input     Admin
    input text      xpath://div[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input     admin123


    ##screenshot of one element = example logo by xpath; and store at a location
    SeleniumLibrary.Capture Element Screenshot       xpath://div[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/savig/PycharmProjects/PythonProject/Logo.png

    ## capture full page screenshot with outpiyt location
    SeleniumLibrary.Capture Page Screenshot         C:/Users/savig/PycharmProjects/PythonProject/TC16.png

    close browser

*** Keywords ***

