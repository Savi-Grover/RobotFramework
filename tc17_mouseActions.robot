*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${url1}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html

*** Test Cases ***
Mouse Actions
    open browser    ${url1}  ${browser}
    maximize browser window

    ## right click
    open context menu       id:box4
    BuiltIn.sleep       1

    ## double click
    go to       https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://div[@id="HTML10"]/div[1]/button
    BuiltIn.sleep       2


    ##drag-drop
    go to       http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop   id:box6     id:box106
    close browser
*** Keywords ***

