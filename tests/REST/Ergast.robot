*** Settings ***
Library     RequestsLibrary
Library     OperatingSystem


*** Test Cases ***
Get results
    ${resp} =    GET    http://ergast.com/api/f1/2020/1/results.json
    ...    expected_status=200
    Log    ${resp.json()}
    Should Be Equal    Valtteri    ${resp.json()}[MRData][RaceTable][Races][0][Results][0][Driver][givenName]
    Should Be Equal    Bottas    ${resp.json()}[MRData][RaceTable][Races][0][Results][0][Driver][familyName]
