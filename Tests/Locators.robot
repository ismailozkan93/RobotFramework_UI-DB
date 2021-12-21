*** Settings ***
Library    Selenium2Library

*** Variables ***


*** Test Cases ***
Login Test
    open browser    https:amazon.de/    chrome
    sleep    3s
    click link    id=nav-link-accountList
    input text    id=ap_email    ismailozkan93@icloud.com
    click button    id=continue
    wait until page contains    Passwort vergessen
    input text    id=ap_password    Manisa45
    click button    id=signInSubmit

*** Keywords ***



#robot Tests/Amazon.robot
