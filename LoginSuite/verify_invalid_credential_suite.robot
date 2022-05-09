*** Settings ***
Documentation   This suite will handle invalid credentail
...     test - TC_OH_2

Test Setup      Launch Browser
Test Teardown    Close Browser
Resource    ../resource/commonfunctionality.resource

*** Test Cases ***
valid Credential Test
    Input Text    id=txtUsername    user
    Input Password    id=txtPassword    admin1
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=Invalid credentials