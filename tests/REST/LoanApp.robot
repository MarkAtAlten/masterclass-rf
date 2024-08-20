*** Settings ***
Library    RequestsLibrary

*** Test Cases ***
Login into loan application   
    ${my_dict} =    Create Dictionary    username=admin    password=admin
    ${resp} =    POST   https://loanapplication-be.azurewebsites.net/auth/login
    ...    json=${my_dict}    expected_status=200
    log    ${resp.json()}[token]