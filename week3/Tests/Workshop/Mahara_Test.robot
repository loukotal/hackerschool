*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mahara Invalid Login
    SeleniumLibrary.Open Browser    https://demo.mahara.org/    chrome
    SeleniumLibrary.Maximize Browser Window
    BuiltIn.Sleep    5
    SeleniumLibrary.Close Browser       
