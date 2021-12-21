*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    headlesschrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
TestingInputBox
   open browser  ${url}    ${browser}
   sleep    3s
   maximize browser window
   close browser
*** Keywords ***

#robot -d results Tests/HeadlessBrowser.robot