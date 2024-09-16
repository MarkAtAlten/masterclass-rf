*** Settings ***
Library         SeleniumLibrary
Resource        ../../resources/GUI/LoanReq.resource

Test Setup      Setup for UI test


*** Test Cases ***
Start loan request
    [Tags]    my_first_tc
    Click Element    id:request1
    Click Element    //a[@id='request1']
    Close All Browsers

UI Exercise 1
    Fill reasons loan request    Groceries     Mini-loan (minimum €300) 
    Click button    id:next1
    Click element    xpath://label/input[@value="yes"]
    Click button    id:next2
    Click element    xpath://select[@formcontrolname="gender"]
    Click element    //select[@formcontrolname="gender"]/option[@value="FEMALE"]
    Press keys    xpath://input[@formcontrolname="firstname"]    Jane
    Press keys    xpath://input[@placeholder="Lastname"]    Doe
    Input text    xpath://input[@placeholder="Date of birth"]    "20/10/1990"
    Press keys    xpath://input[@placeholder="Address"]    Laan 1
    Press keys    xpath://input[@placeholder="Zipcode"]    1234AB
    Press keys    xpath://input[@placeholder="City"]    Rotterdam
    Scroll element into view    id:next3
    Click element    xpath://select[@formcontrolname="maritalStatus"]
    Click element    xpath://select[@formcontrolname="maritalStatus"]/option[@value="MARRIED"]
    Press keys    xpath://input[@placeholder="Income"]    1000
    Click element    xpath://select[@formcontrolname="incometype"]
    Click element    xpath://select[@formcontrolname="incometype"]/option[@value="TEMPORARY_CONTRACT"]
    builtin.sleep    2
    Click button    id:next3
    Element should contain    //table//tr//td//strong[contains(text(),"Acknowledgement:")]/../../td[2]    yes

UI exercise 2
    Click Element    //a[@id='request1']
    BuiltIn.Sleep    2
    Click element    xpath://label[text()=" Mortgage (minimum €50,000) "]
    Press keys    xpath://input[@placeholder="Amount"]    "3000"
    Click button    id:next1
    Element should be visible    //div[@class="col-lg-12 col-xl-12 alert alert-danger"]
    Element should contain    //div[@class="col-lg-12 col-xl-12 alert alert-danger"]    Mortgage

UI exercise 3
    Click Element    //a[@id='request1']
    BuiltIn.Sleep    1
    Click element    xpath://button/span[text()="Bills"]/..
    Element should be visible    //div[@class="modal-body"]
    Element should contain
    ...    //div[@class="modal-body"]/p
    ...    A Revolving Credit or a Personal loan is probably the way to go.


*** Keywords ***
Setup for UI test
    Open browser    https://loanapplication.azurewebsites.net/    Chrome
    Maximize Browser Window

