*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Syntax For Loop1
    FOR   ${i}    IN RANGE    1   10
        LOG TO CONSOLE  ${i}
    END

Syntax For Loop2
    FOR   ${i}    IN     1 2 3 4 5 6 7
        LOG TO CONSOLE  ${i}
    END

## having double space in elements - all elements will be printed line by line
Syntax For Loop3
    FOR   ${i}    IN     1  2  3  4  5  6  7
        LOG TO CONSOLE  ${i}
    END

Syntax For Loop4 for list
    @{items}    create list     1   2   3  4   5
    FOR   ${i}    IN     @{items}
        LOG TO CONSOLE  ${i}
    END

Syntax For Loop5 for Strings
    FOR   ${i}    IN     john  david   smith   scott
        LOG TO CONSOLE  ${i}
    END

Syntax For Loop6 for list of string
    @{names}    create list     john  david   smith   scott
    FOR   ${i}    IN     @{names}
        LOG TO CONSOLE  ${i}
    END


Syntax For Loop7 -exit when condition met
    @{names}    create list     john  david   smith   scott
    FOR   ${i}    IN     @{names}
        LOG TO CONSOLE  ${i}
        exit for loop if   '${i}' == 'david'
    END



*** Keywords ***

