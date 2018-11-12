*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Keywords/eshop_keywords.txt
Variables    ../Objects/Automation_practice/Automation_practice.py
Test Setup    eshop_keywords.Open Browser On Women Category
Test Teardown    eshop_keywords.Close Browser and Capture Screenshot


*** Test Cases ***
Women Category Landing Page
    SeleniumLibrary.Page Should Contain Element    ${span_cat_name}
    SeleniumLibrary.Page Should Contain    ${cat_name_text}


Filter By Lowest Price First
    SeleniumLibrary.Select From List By Index    ${product_dropdown_filter}    1
    SeleniumLibrary.Wait Until Page Contains Element    ${product_list}    
    ${element}=     SeleniumLibrary.Select From List By Index    ${product_list}    1
    BuiltIn.Log    ${element}    
    