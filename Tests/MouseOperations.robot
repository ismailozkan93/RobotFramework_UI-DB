*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https:amazon.de/

*** Test Cases ***
MouseOperations
    #Right click/open open context menu
     open browser  ${url}    ${browser}
     maximize browser window
     open context menu  xpath://*[@id="nav-xshop"]/a[6]
     sleep    3s

    ##Double click action
    #go to .............
    #double click element
    #sleep 3s

    #Drag and Drop
    #open browser  ${url}    ${browser}
    #maximize browser window
    #drag and drop  xpath://*[@id="nav-xshop"]/a[4]   id:nav-search-bar-form
    #sleep    3s
   #robot -d results Tests/MouseOperations.robot