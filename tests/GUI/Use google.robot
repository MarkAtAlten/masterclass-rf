*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Search for Alten
    Open Browser    https://www.google.com/    Chrome
    Click Button    id:L2AGLb
    Input Text    id:APjFqb    Alten
    Press KeyS    id:APjFqb    RETURN
    Click Element    //h3[1]
    ${location} =    Get Location
    Should Be Equal    ${location}    https://www.alten.com/
    sleep    5s
    Close Browser
    