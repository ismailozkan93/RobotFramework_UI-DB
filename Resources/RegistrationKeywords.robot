*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Click Register
    click link    ${link_reg}

Select Male
    select radio button    Gender   M

Select Female
    select radio button    Gender    F

Enter FirstName
    [Arguments]    ${firstname}
    input text    ${txt_reg_firstName}     ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    input text    ${txt_reg_lastName}     ${lastname}

Enter Email
    [Arguments]    ${email}
    input text    ${txt_reg_email}     ${email}

Pass and Confirmation
    [Arguments]    ${password}    ${conpassword}
    input text    ${txt_reg_Pass}   ${password}
    input text    ${txt_reg_ConPass}    ${conpassword}

Click Register Btn
    click button    ${btn_Register}



Verify unsuccesfull Registration
    element should be visible    ${error_message}

Close my Browser
    close all browsers