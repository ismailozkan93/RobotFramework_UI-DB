*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https://www.msn.com/de-de/finanzen/top-stories/fed-sitzung-und-finanzm%C3%A4rkte-auf-diese-drei-punkte-kommt-es-bei-der-fed-sitzung-an/ar-AARP8o9?ocid=entnewsntp

*** Test Cases ***
TabbedWindow
    #Right click/open open context menu
     open browser  ${url}    ${browser}
     maximize browser window
     ${loc}=    get window titles
     log to console    ${loc}
     sleep    3s
     click element    xpath://*[@id="ArticleBody"]/p[3]/a[1]
     sleep    3s
     ${loc}=    get window titles
     log to console    ${loc}





#robot -d results Tests/TabbedWindow.robot
