*** Settings ***
Library    SeleniumLibrary

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
    Input Text    id:sb_form_q    Alten
    Click Element    id:search_icon
    Sleep    5s
