*** Settings ***
Documentation   This suite will handle invalid credentail
...     test - TC_OH_2
Resource    ../resource/commonfunctionality.resource

Test Setup      Launch Browser
Test Teardown    Close Browser

Test Template   Invalid Credential Template
*** Test Cases ***
TC1     jhon    jhon123     Invalid credentials
TC2     peter    peter123     Invalid credentials



*** Keywords ***
Invalid Credential Template
    [Arguments]   ${username}   ${password}     ${expected_error}
    Input Text    id=txtUsername     ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=${expected_error}

