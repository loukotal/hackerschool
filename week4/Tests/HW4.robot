*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../Keywords/eshop_keywords.txt
Variables    ../Objects/Automation_practice/Automation_practice.py
Test Setup    Open Browser On Shop Category
Test Teardown    Close Browser and Capture Screenshot


*** Test Cases ***
Shop Landing Page
    [Setup]    eshop_keywords.Open Browser On Base Url   
    eshop_keywords.Go To Shop    ${eshop_id}    

Test Product Counts
    :FOR    ${category}    IN    @{category_enum.keys()}
    \    eshop_keywords.Select Category   ${category}

Sort Product by Criterion
    :FOR    ${criterion}    IN    @{sorting}
    \    eshop_keywords.Select Sort Criterion By Label    ${criterion}    
