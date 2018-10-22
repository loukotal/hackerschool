*** Settings ***

Test Setup    Log     Message
Test Teardown    Log    Teardown
Library    SeleniumLibrary


*** Variable ***
${initial_variable}    Initial Value

*** Test Cases ***
First Test
    Get Time and Print to Log


*** Keyword ***
Get Time And Print To Log
    ${local_variable}=    Get Time
    Log    ${local_variable}
    Log To Console    ${initial_variable}  