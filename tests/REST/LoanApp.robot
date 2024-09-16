*** Settings ***
Library     RequestsLibrary
Library     OperatingSystem


*** Test Cases ***
Login into loan application
    ${my_dict} =    Create Dictionary    username=admin    password=admin
    ${resp} =    POST    https://loanapplication-be.azurewebsites.net/auth/login
    ...    json=${my_dict}    expected_status=200
    Log    ${resp.json()}[token]

Request new loan
    ${my_dict} =    Create Dictionary    gender=MALE    firstname=string
    ...    lastName=string    address=string    zipcode=string
    ...    city=string    dob=2024-09-01T19:49:10.410Z
    ...    income=0    incomeType=TEMPORARY_CONTRACT
    ...    maritalStatus=Single    loanTypeId=1    amount=500
    ${resp} =    POST    https://loanapplication-be.azurewebsites.net/loanrequests/new
    ...    json=${my_dict}    expected_status=200
    Log    ${resp.json()}
    Log    ID of requested loan is: ${resp.json()}[id]

Request new loan via file
    ${json} =    Get File    ${CURDIR}/LoanReq.json
    ${object} =    Evaluate    json.loads('''${json}''')    json
    ${resp} =    POST    https://loanapplication-be.azurewebsites.net/loanrequests/new
    ...    json=${object}    expected_status=200
    Log    ${resp.json()}
    Log    ID of requested loan is: ${resp.json()}[id]
