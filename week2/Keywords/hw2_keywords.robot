*** Settings ***
Library    Dialogs
Variables    ../Resources/hw2_resource.py


*** Keywords ***
Get Input and Compare
    ${user_input}=    Dialogs.Get Value From User    Please input an integer value
    ${EXPECTED_VALUE}=    BuiltIn.Convert To String    ${EXPECTED_VALUE}     # So values from CL can be passed in.    
    BuiltIn.Should Be Equal    ${user_input}    ${EXPECTED_VALUE}    Input value should be equal to expected value.
    BuiltIn.Log    ${user_input}==${EXPECTED_VALUE} 