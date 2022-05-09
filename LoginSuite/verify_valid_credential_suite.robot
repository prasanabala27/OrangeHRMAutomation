*** Settings ***
Documentation   This suite will handle valid credentail
...     test - TC_OH_2

Test Setup      Launch Browser
Test Teardown    Close Browser
Resource    ../resource/commonfunctionality.resource

*** Test Cases ***
valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info