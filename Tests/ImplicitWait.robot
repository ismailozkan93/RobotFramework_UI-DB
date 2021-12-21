*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/register

*** Test Cases ***
RegistirationTest
    open browser  ${url}    ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    set selenium implicit wait  10 seconds
    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    select radio button  Gender  M      #name=Gender value=M
    input text    id=FirstName    Ismail
    input text    id=LastName1     Özkan
    input text    id=Email        ismailoezkan93@gmail.com
    input text    id=Password     Manisa45
    input text    id=ConfirmPassword    Manisa45
    close browser

#click element    name=register-button
#robot -d results Tests/ImplicitWait.robot
