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

    ## click on button to open alert
    click element       id:confirmbtn
    BuiltIn.Sleep       2

    ## we want to select OK on
    ##handle alert    accept

    ## to handle alert by cancel
    ##handle alert    dismiss

    ## to keep open alert for some time without closing
    handle alert        leave

    ## to verify alert text
    alert should be present     Hello , Are you sure you want to confirm?

    ## to verify alert text not present - this shud fail if text is right
    alert should not be present     Hello , Are you sure you want to confirm?
    close browser


*** Keywords ***

