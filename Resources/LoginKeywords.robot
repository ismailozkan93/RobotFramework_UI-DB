*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Click Login Link
    click link    Log in

Enter UserName
    [Arguments]    ${username}
    input text    ${txt_loginUserName}     ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}     ${password}

click SignIn
    click button    ${btn_LogIn}

Verify Succesfull Login
    title should be  Demo Web Shop

Close my Browser
    close all browsers

