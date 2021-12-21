*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https:amazon.de/
${url1}    http://demowebshop.tricentis.com/register
*** Test Cases ***
Handling Dropdowns and Lists
    open browser  ${url}    ${browser}
    maximize browser window

    open browser  ${url1}    ${browser}
    maximize browser window

    close all browsers

 #robot -d results Tests/CloseAll.robot