*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    https:amazon.de/

*** Test Cases ***
TestingInputBox
   open browser  ${url}    ${browser}
   maximize browser window
   wait until element is visible    id=nav-logo-sprites
   click link    id=nav-link-accountList
   ${"email_txt"}    set variable    id:ap_email
   element should be visible    ${"email_txt"}
   input text    ${"email_txt"}    ismailozkan93@icloud.com
   click button    id=continue
   wait until page contains    Passwort vergessen
   input text    id=ap_password    Manisa45
   click button    id=signInSubmit
   close browser
*** Keywords ***