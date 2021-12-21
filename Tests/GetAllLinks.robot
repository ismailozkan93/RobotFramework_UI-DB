*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
GetAllLinks
     open browser       ${url}     ${browser}
     maximize browser window
     sleep    3s
     ${AllLinksCount}=    get element count  xpath://a
     log to console    ${AllLinksCount}

     #@{LinkItems}   create list

     FOR  ${I}  IN RANGE  1  ${AllLinksCount}+1
     ${linkText}=    get text    xpath:(//a)[${I}]
     LOG TO CONSOLE  ${linkText}
     END
#robot -d results Tests/GetAllLinks.robot