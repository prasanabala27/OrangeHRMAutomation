*** Settings ***
Documentation   This suite will handle valid credentail
...     test - TC_OH_2

Resource    ../resource/commonfunctionality.resource

Test Setup      Launch Browser
Test Teardown    Close Browser

Test Template    valid Credential Template

Library     DataDriver      file=../test_data/orange_data.xlsx   sheet_name=valid Credential

*** Test Cases ***
TC1

*** Keywords ***
valid Credential Template
    [Arguments]     ${username}   ${password}     ${expected}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Page Should Contain    ${expected}