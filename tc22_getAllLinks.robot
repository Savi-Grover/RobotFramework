*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url}      https://demo.guru99.com/test/newtours/
${url1}     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
Test for links
    open browser    ${url}  ${browser}
    maximize browser window

    ## give relative xpath to fetch all count
    ${count}=        get element count      xpath://a
    log to console      ${count}

    ## extract each link text
    @{LinkItems}    create list

    FOR     ${i}     IN RANGE    1   ${count}+1
        ${output}=  get text    xpath:(//a)[${i}]
        log to console      ${output}
    END


*** Keywords ***

