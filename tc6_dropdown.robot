*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    SeleniumLibrary.Set Selenium Speed     2seconds

    ## format of dropdown button - name of dropdown ; value/index/name of dropdown option

    ##label means select by display text
    select from list by label   dropdown-class-example      Option2
    select from list by value   dropdown-class-example      option1
    select from list by index   dropdown-class-example      3

    ## select in list
    ## name of list ## get variable value
    select from list by label       dropdown-class-example      Option1
    ## can also use unselect
    
    close browser

*** Keywords ***

