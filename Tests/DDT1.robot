*** Settings ***
Library    Selenium2Library
Resource    ../Resources/login_resources.robot
Suite Setup    Openmybrowser
Suite Teardown    close browser
Test Template    Invalid Login

*** Test Cases ***      username                 password
Right user empty pwd    i.oezkan@qcentris.test       ${empty}
Right user invalid pwd    i.oezkan@qcentris.test     Tosca123
Wrong user right pwd    i.oezkan@qcentr.test         Tosca1234!
Wrong user empty pwd    i.oezkan@qcenis.test         ${empty}
Wrong user wrong pwd    i.oezkan@qcents.test         ${empty}

*** Keywords ***
Invalid Login
    sleep    3s
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    sleep    2s
    click login button
    Error message should be visible



#robot -d results Tests/DDT1.robot
#*** Test Cases ***
#Tc1
 #   Invalid Login    i.oezkan@qcentris.test    sasasasa
  #  close browser