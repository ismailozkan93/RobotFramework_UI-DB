*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
ScrollingTest
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed    3 seconds
    #execute javascript    window.scrollTo(0,3000)
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[95]/td[1]/img
    execute javascript    window.scrollTo(0,document.body.scrollHeight)     #end of the page
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)        #starting point














#robot -d results Tests/ScrollingPage.robot