*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Fill reasons loan request
    [Documentation]    Set's reasons why a loan should be requested on why details page of loanapplication
    [Arguments]    ${loan_reason}    ${loan_type}    ${amount}=300
    Click Element    //a[@id='request1']
    BuiltIn.Sleep    1
    Click element    xpath://button/span[text()="${loan_reason}"]/..
    Press keys    xpath://button/span[text()="${loan_reason}"]/..    ESC
    Click Element    xpath://label[text()=" ${loan_type} "]
    Click Element    xpath://label[text()=" ${loan_type} "]
    Press keys    xpath://input[@placeholder="Amount"]    "${amount}"
