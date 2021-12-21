*** Settings ***
Library    Selenium2Library
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../TestData/LoginData.xlsx   sheet_name=Tabelle1
Suite Setup    Openmybrowser
Suite Teardown    close browser
Test Template    Invalid Login

*** Test Cases ***
LoginTestWithExcel    ${username}    ${password}

*** Keywords ***
Invalid Login
    sleep    3s
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    sleep    2s
    click login button
    Error message should be visible

#robot -d results Tests/DDT2.robot
