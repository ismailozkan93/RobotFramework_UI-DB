*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
NavigationTest
    open browser    http://demowebshop.tricentis.com/    chrome
    maximize browser window
    set selenium speed    2 seconds
    ${loc}=    get location
    log to console    ${loc}

    go to    https://www.amazon.de/
    ${loc}=    get location
    log to console    ${loc}

    go back
    ${loc}=    get location
    log to console    ${loc}

    close browser




#robot -d results Tests/NavigationKeywords.robot