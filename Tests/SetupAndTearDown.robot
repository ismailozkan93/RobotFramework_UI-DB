*** Settings ***
Library    Selenium2Library
Resource    ../Resources/login_resources.robot

Suite Setup  log to console    Openmybrowser
Suite Teardown  log to console   close browser

Test Setup    log to console    Login to app
Test Teardown    log to console    Logout from app

*** Test Cases ***
TC1 Prepaid Recharge
    log to console    This is prepaid recharge testcase
TC2 Postpaid Recharge
    log to console    This is postpaid recharge testcase
TC3 Search
    log to console    This is Search test case
TC4 Advanced Search
    log to console    This is Adv Search test case


#robot -d results Tests/SetupAndTearDown.robot