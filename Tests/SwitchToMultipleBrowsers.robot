*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https://www.amazon.de/
${url1}    https://www.handelsblatt.com/


*** Test Cases ***
Switchtowindow
    open browser  ${url}    ${browser}
    maximize browser window
    sleep    3s
    ${loc}=    get title        # get window titles
    log to console    ${loc}

    open browser  ${url1}    ${browser}
    maximize browser window
    sleep    3s
    ${loc1}=    get title       #get window titles
    log to console    ${loc1}

    switch browser    1
    sleep    2s
    ${loc2}=    get title       #get window titles
    log to console    ${loc2}

    switch browser    2
    sleep    2s
    ${loc3}=    get title       #get window titles
    log to console    ${loc3}
    sleep    3s

#robot -d results Tests/SwitchToMultipleBrowsers.robot