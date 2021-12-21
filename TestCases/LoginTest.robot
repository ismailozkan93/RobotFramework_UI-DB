*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://demowebshop.tricentis.com/
${user}     i.oezkan@qcentris.test
${pwd}      Tosca1234!

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}  ${Browser}
    Click Login Link
    Enter UserName    ${user}
    sleep    2s
    Enter Password    ${pwd}
    click SignIn
    sleep    3s
    Verify Succesfull Login
    Close my Browser


#robot -d results TestCases/LoginTest.robot
#input text    id:Email  i.oezkan@qcentris.test
#input text    id:Password    Tosca1234!