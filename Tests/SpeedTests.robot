*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/register

*** Test Cases ***
RegistirationTest
    ${spead}=    get selenium speed
    log to console    ${spead}
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed    2 seconds     #it affects all of items
    select radio button  Gender  M      #name=Gender value=M #3s
    input text    id=FirstName    Ismail                    #3s
    input text    id=LastName     Özkan                     #3s
    input text    id=Email        ismailoezkan93@gmail.com
    input text    id=Password     Manisa45
    input text    id=ConfirmPassword    Manisa45
    ${spead}=    get selenium speed
    log to console    ${spead}
    close browser

#click element    name=register-button
#robot -d results Tests/SpeedTests.robot

