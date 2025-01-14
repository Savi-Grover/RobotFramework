*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Handling Alerts
    open browser    ${url}  ${browser}
    maximize browser window

    ##click on first frame- by using id, name, otherLocator
    select frame        courses-iframe

    ##click element -register button inside this frame
    click element       xpath:/html/body/div/header/div[2]/div/div/div[2]/div[1]/a

    ##unselect this frame before going to other frame
    unselect frame

    ##select second frame
    ##select frame        teal-job-tracker-iframe-stable


    click link      xpath:/html/body/div/header/div[3]/div/div/div[2]/nav/div[2]/ul/li[5]/a

    close browser


*** Keywords ***

