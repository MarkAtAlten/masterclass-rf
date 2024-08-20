*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
Start loan request
    [Tags]  my_first_tc
    Open Browser    https://loanapplication.azurewebsites.net/    ff
    Maximize Browser Window
    Click Element    id:request1
    Click Element    //a[@id='request1']
    Close All Browsers

Test keyword 1

