*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Test for Table
    open browser    ${url}  ${browser}
    maximize browser window

    ## give relative xpath to fetch all count of row in table
    ${countOfRows}=        get element count      //div[@id="HTML1"]/div[1]/table/tbody/tr
    log to console      ${countOfRows}

     ## give relative xpath to fetch all count of columns header in table
    ${countOfColumn}=      get element count      //div[@id="HTML1"]/div[1]/table/tbody/tr/th
    log to console      ${countOfColumn}

    ## capture specific row and column of data
    ${data}=        get text        xpath://div[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console      ${data}

    ## table validations- table xpath - column number - value
    Table column should contain     xpath://div[@id="HTML1"]/div[1]/table/tbody     2       Author

    table row should contain        xpath://div[@id="HTML1"]/div[1]/table/tbody     5       Selenium

    ## cell value checked by row, column, value
    table cell should contain       xpath://div[@id="HTML1"]/div[1]/table     5       4       3000

    table header should contain     xpath://div[@id="HTML1"]/div[1]/table       Author
    close browser
*** Keywords ***

