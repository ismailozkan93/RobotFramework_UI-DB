*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https://opensoruce-demo.orangehrmlive.com/

*** Test Cases ***
CaptureScreenTest
    open browser  ${url}    ${browser}
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    capture element screenshot    xpath://*[@id="paneContainer"]/div/div[1]/div[2]/img    C:/Development/robot-scripts/first-script/Logo.png

    capture page screenshot    C:/Development/robot-scripts/first-script/LoginTC.png


 #robot -d results Tests/CaptureScreen.robot