*** Settings ***
Library    Selenium2Library
Resource    ../Resources/resources.robot


*** Variables ***

${browser}    chrome
${url}    http://demowebshop.tricentis.com/login

*** Test Cases ***
TC1
    ${PageTitle}=    launchBrowser    ${url}    ${browser}
    log to console    ${PageTitle}
    log    ${PageTitle}
    input text    id:Email  i.oezkan@qcentris.test
    input text    id:Password    Tosca1234!
    resources.closeBrowser


#*** Test Cases ***
#open browser    {url} {browser}
#Enter ismail ioezkan@gmail.com Manisa45

#*** Keywords ***
#Enter
#[Arguments] ${username} ${email} ${password}
#input text    name:username
#input text    name:email
#input text    id:password


#robot -d results Tests/Userkeywords.robot