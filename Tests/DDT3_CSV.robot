*** Settings ***
Library    SelniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.csv
Suite Setup    Openmybrowser
Suite Teardown    close browser
Test Template    Invalid Login

*** Test Cases ***
LoginTestWithCsv    ${username}    ${password}

*** Keywords ***
Invalid Login
    sleep    3s
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    sleep    2s
    click login button
    Error message should be visible

#robot -V Tests/DDT3.robot
#robot -d results Tests/DDT3.robot
