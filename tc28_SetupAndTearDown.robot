*** Settings ***
Library  SeleniumLibrary


## to call opening and closing browser just once
Suite Setup  log to console   Opening Browser
Suite Teardown  log to console   Closing Browser
Test Setup  log to console   Login into application
Test Teardown  log to console   Logout from application

## specify all invalid login cases
*** Test Cases ***
Test1
    log to console      test1 ran
Test2
    log to console      test2 ran
Test3
    log to console      test3 ran


*** Keywords ***
