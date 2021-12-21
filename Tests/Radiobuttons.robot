*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    chrome
${url}    http://demo.guru99.com/test/radio.html

*** Test Cases ***
Radio Button
   open browser  ${url}    ${browser}
   maximize browser window
   sleep    2s
   select radio button  webform   Option 1
   #name=webform value= Option 1
   sleep    2s
   select radio button  webform   Option 2
   sleep    2s
   select radio button  webform   Option 3
   sleep    2s
   #selecting checkbox name
   #select checkbox name
   click element    id=vfb-6-0


*** Keywords ***



#robot Tests/Amazon.robot