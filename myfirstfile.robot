*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
My testcase
    Pass Execution    I pass

My 2nd testcase
    Fail    I fail


my GUI testcase
    [Tags]  my_first_tc
    Open Browser    https://loanapplication.azurewebsites.net/    Chrome
    Maximize Browser Window
    # Sleep    10s
    Click Element    id:request1
    Click Element    //a[@id='request1']
    Close All Browsers