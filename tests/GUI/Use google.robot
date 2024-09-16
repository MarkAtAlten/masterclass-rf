*** Settings ***
Library     SeleniumLibrary
Library     ../../resources/GUI/helper.py


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

Open Google Search for Eifel Tower
    Open Browser    https://www.google.com/    Chrome
    Click Button    id:L2AGLb
    Input Text    id:APjFqb    Eifel Tower
    Press KeyS    id:APjFqb    RETURN
    ${height} =    Get Text    //span[text()="Height"]/../span[2]
    ${expected_meter} =    helper.Feet To Meter    984
    Should Be Equal As Integers    ${expected_meter}    ${height}[:3]
