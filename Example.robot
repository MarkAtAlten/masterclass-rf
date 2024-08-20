*** Settings ***
# Include import of .resource files or libraries here
Library    JSONLibrary

*** Variables ***
# Set global variables here
${SOME_VARIABLE}    Hello World

*** Test Cases ***
# All your testcases go here
My First testcase
    Log    Log some message
    Keyword 1
    Keyword 2

My Second testcase
    Pass Execution    Some message why I passed

My Failure
    Should Be Equal    ${SOME_VARIABLE}    Hello World
    Should Not Be Equal    1    2
    Fail    Some fail message

*** Keywords ***
Keyword 1
    Log    I am keyword 1

Keyword 2
    Log    ${SOME_VARIABLE}



