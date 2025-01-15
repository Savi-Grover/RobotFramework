*** Settings ***
Library  SeleniumLibrary

*** Variables ***
##Global *** variables ***
${browser}  chrome
${url1}     https://history.state.gov/countries/all

*** Test Cases ***
Scrolling Test
    open browser    ${url1}  ${browser}
    maximize browser window

    ## scroll call method, for horizontal scroll, xaxis=0 =pixel
    ##execute javascript  window.scrollTo(0,1500)
    ##BuiltIn.sleep   3

    ## scroll to element
    scroll element into view    xpath://div[@id="content-inner"]/div/div[2]/div[4]/ul/li[10]/a
    BuiltIn.sleep   3

    ## scroll to bottom
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    BuiltIn.sleep   3

    ## scroll to top (or starting point)
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    BuiltIn.sleep   3

    close browser
*** Keywords ***

