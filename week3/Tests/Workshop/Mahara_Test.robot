*** Settings ***
Library    SeleniumLibrary
Test Setup    Open browser to Mahara
Test Teardown    Capture Screenshot and Close Browser
Resource    ../../Keywords/Mahara/Mahara_keywords.txt

*** Test Cases ***
Mahara Invalid Login
    Login to Mahara    Invalid_username    Invalid_password
    SeleniumLibrary.Wait Until Page Contains Element    id=messages
    SeleniumLibrary.Page Should Contain    You have not provided the correct credentials to log in. Please check your username and password are correct.
    SeleniumLibrary.Page Should Contain    There was an error with submitting this form. Please check the marked fields and try again. 
    
Mahara Admin Login
    Login to Mahara    admin    MaharaDemo
    SeleniumLibrary.Wait Until Page Contains Element    https://demo.mahara.org/user/james-jetts
    SeleniumLibrary.Page Should Contain Element    xpath=//a[@class="user-icon"]    # /html/body/header/div/div/div[2]/a        
    