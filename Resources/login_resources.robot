*** Settings ***
Library    Selenium2Library


*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/login


*** Keywords ***
Openmybrowser
    open browser    ${url}    ${browser}
    maximize browser window

close browser
    close all browsers

open login page
    go to    ${url}

input username
    [Arguments]    ${username}
    input text    id:Email    ${username}

input password
    [Arguments]    ${password}
     input text    id:Password    ${password}

click login button
    click button    xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[5]/input

Error message should be visible
    page should contain element    xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[1]/div/ul/li
    #page should contain    The credentials provided are incorrect



#input text    id:Email  i.oezkan@qcentris.test
#input text    id:Password    Tosca1234!