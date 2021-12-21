*** Settings ***
Library    Selenium2Library


*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/login

*** Keywords ***
launchBrowser
    [Arguments]  ${appurl}    ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=    get title
    [Return]    ${title}
    sleep    3s
closeBrowser
    close all browsers


#Enter
#[Arguments] ${username} ${email} ${password}
#input text    name:username
#input text    name:email

