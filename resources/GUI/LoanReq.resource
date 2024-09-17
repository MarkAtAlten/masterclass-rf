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
    Click button    id:next1

Confirm Acknowledge Of Knowledge
    Click element    xpath://label/input[@value="yes"]
    Click button    id:next2

Fill Personal Details
    [Arguments]    ${gender}    ${firstname}    ${lastname}    ${dob}
    ...   ${address}    ${zipcode}    ${city}    ${marital_status}    
    ...   ${income}    ${income_type}
    Click element    xpath://select[@formcontrolname="gender"]
    Click element    //select[@formcontrolname="gender"]/option[@value="${gender}"]
    Press keys    xpath://input[@formcontrolname="firstname"]    ${firstname}
    Press keys    xpath://input[@placeholder="Lastname"]    ${lastname}
    Input text    xpath://input[@placeholder="Date of birth"]    "${dob}"
    Press keys    xpath://input[@placeholder="Address"]    ${address}
    Press keys    xpath://input[@placeholder="Zipcode"]    ${zipcode}
    Press keys    xpath://input[@placeholder="City"]    ${city}
    Scroll element into view    id:next3
    Click element    xpath://select[@formcontrolname="maritalStatus"]
    Click element    xpath://select[@formcontrolname="maritalStatus"]/option[@value="${marital_status}"]
    Press keys    xpath://input[@placeholder="Income"]    ${income}
    Click element    xpath://select[@formcontrolname="incometype"]
    Click element    xpath://select[@formcontrolname="incometype"]/option[@value="${income_type}"]
    builtin.sleep    2
    Click button    id:next3

Select verify loan details are ok and request loan
    Click Button    id:requestBtn

Verify Loan Request Is Succesfull
    Wait Until Element Is Visible    //div[contains(@class, "alert-succes")]
  