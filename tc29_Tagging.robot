*** Settings ***
Library  SeleniumLibrary
Default Tags  regression

*** Test Cases ***
tc1 User Registration
    [Tag]               regression
    log to console      user registration test
    log to console      registration done

tc2 Login
    [Tag]               sanity
    log to console      login test
    log to console      login done

tc3 Change User settings
    [Tag]               regression
    log to console      this is edit settings test
    log to console      edited settings

tc4 Logout
    [Tag]               sanity
    log to console      Log out test
    log to console      logged out.

## we want to run only specific test - tc 1, tc2, tc 3
## to specify tag name
## to execute one group like regression

##   robot --include sanity tc29_Tagging.robot

## we can exclude tag also        ##   robot --exclude sanity tc29_Tagging.robot

