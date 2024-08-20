*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Test Setup        Open Browser    https://www.bing.com/    Chrome
Test Teardown     Close Browser

*** Test Cases ***
Search for Alten on Bing
    Sleep    2s
    Click Button    id:bnp_btn_accept
    Input Text    id:sb_form_q    Alten
    Click Element    id:search_icon
    Sleep    5s

Search for Google on Bing
    Sleep    2s
    Click Button    id:bnp_btn_accept
    Input Text    id:sb_form_q    Google
    Click Element    id:search_icon
    Sleep    5s

Open Google Search for Alten
    Click Button    id:L2AGLb
    Input Text    title:Search    Alten
    Press Key    title:Search    ENTER
    sleep    5s
    