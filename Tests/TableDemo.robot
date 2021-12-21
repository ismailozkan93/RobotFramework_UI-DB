*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
TableTest
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed    2 seconds
    ${countOfElement}=    get element count    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr
    log to console    ${countOfElement}

    FOR    ${I}    IN RANGE    1    ${countOfElement}+1
    ${RowText}=    get text    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[${I}]
    LOG TO CONSOLE  ${RowText}
    END

    #log to console    get element    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody    2    #Madagaskar

    #${getCell}=    get table cell     xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[2]/td[1]
    #log to console    ${getCell}


#https://www.youtube.com/watch?v=iYXl3MrRHDI&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=17
#robot -d results Tests/TableDemo.robot