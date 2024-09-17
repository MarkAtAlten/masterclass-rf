*** Settings ***
Library         SeleniumLibrary
Resource        ../../resources/GUI/LoanReq.resource

Test Setup      Setup for UI test


*** Test Cases ***
UI Exercise 1
    Fill reasons loan request    Groceries     Mini-loan (minimum €300)
    Confirm Acknowledge Of Knowledge
    Fill Personal Details    FEMALE    Jane    Doe    20/10/1990    Laan 1
    ...       1234AB    Rotterdam    MARRIED    1000    TEMPORARY_CONTRACT
    Select verify loan details are ok and request loan
    Verify Loan Request Is Succesfull

*** Keywords ***
Setup for UI test
    Open browser    https://loanapplication.azurewebsites.net/    Chrome
    Maximize Browser Window

