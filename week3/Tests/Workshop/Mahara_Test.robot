*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mahara Invalid Login
    SeleniumLibrary.Open Browser    https://demo.mahara.org/    chrome
    SeleniumLibrary.Input Text    id=login_login_username    Invalid_username
    SeleniumLibrary.Input Password    name=login_password    12345
    SeleniumLibrary.Click Button    Login    # value in unnecessary (it's more clean not to use it)
    SeleniumLibrary.Page Should Contain Element    id=messages
    SeleniumLibrary.Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.
    SeleniumLibrary.Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again.        
    SeleniumLibrary.Close Browser       