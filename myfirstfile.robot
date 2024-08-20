*** Settings ***

Library    SeleniumLibrary
Library    RequestsLibrary

*** Test Cases ***
My testcase
    Pass Execution    I pass

My 2nd testcase
    Fail    I fail

my GUI testcase
    [Tags]  my_first_tc
    Open Browser    https://loanapplication.azurewebsites.net/    ff
    Maximize Browser Window
    Click Element    id:request1
    Click Element    //a[@id='request1']
    Close All Browsers

My REST testcase   
    ${my_dict} =    Create Dictionary    username=admin    password=admin
    ${resp} =    POST   https://loanapplication-be.azurewebsites.net/auth/login
    ...    json=${my_dict}    expected_status=200
    log    ${resp.json()}[token]