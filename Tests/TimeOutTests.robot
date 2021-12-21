*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/register

*** Test Cases ***
RegistirationTest
    open browser  ${url}    ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    set selenium timeout    10 seconds       #it affects wait until page contains
    wait until page contains    Register    # 5 secs         #now wait 10 seconds
    select radio button  Gender  M      #name=Gender value=M
    input text    id=FirstName    Ismail
    input text    id=LastName     Özkan
    input text    id=Email        ismailoezkan93@gmail.com
    input text    id=Password     Manisa45
    input text    id=ConfirmPassword    Manisa45
    close browser

#click element    name=register-button
#robot -d results Tests/TimeOutTests.robot
