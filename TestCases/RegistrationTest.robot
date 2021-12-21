*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  http://demowebshop.tricentis.com/
${firstname}    ismail
${lastname}     özkan
${email}     i.oezkan@qcentris.test
${pwd}      Tosca1234!

*** Test Cases ***
LoginTest
    Open my Browser    ${SiteUrl}  ${Browser}
    Click Register
    sleep    1s
    Select Female
    Enter FirstName    ${firstname}
    Enter Lastname     ${lastname}
    Enter Email        ${email}
    sleep    2s
    Pass and Confirmation    ${pwd}    ${pwd}
    Click Register Btn
    sleep    1s
    Verify unsuccesfull Registration
    Close my Browser


#robot -d results TestCases/RegistrationTest.robot
