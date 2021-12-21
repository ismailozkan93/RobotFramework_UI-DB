*** Settings ***
Library    Selenium2Library

*** Variables ***

${browser}    chrome
${url}    https:amazon.de/

*** Test Cases ***
Handling Dropdowns and Lists
    open browser  ${url}    ${browser}
    maximize browser window
    sleep    2s
    #select name="url"          this url=select name value
    select from list by label    url  Amazon Global Store
    sleep    3s
    select from list by index    url    6
    sleep    3s
    select from list by value    url    search-alias=clothing
    sleep    3s
    #list box
    select from list by label    url    Computer & Zubehör
    select from list by label    url    Drogerie & Körperpflege
    sleep    3s
    #unselect from list by label    url   Drogerie & Körperpflege
    sleep    3s
    close browser


#robot -d results Tests/dropdowns.robot