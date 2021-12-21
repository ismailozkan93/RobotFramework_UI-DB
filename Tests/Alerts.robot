*** Settings ***
Library    Selenium2Library


*** Variables ***
${browser}    chrome
${url}    https://the-internet.herokuapp.com/javascript_alerts
${url1}   https://the-internet.herokuapp.com/iframe                       #nested_frames

*** Test Cases ***
Handling Alerts
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed    2 seconds
    click element  xpath=//*[@id="content"]/div/ul/li[1]/button
    handle alert    action=accept
    click element    xpath=//*[@id="content"]/div/ul/li[2]/button
    handle alert    dismiss
    alert should not be present    I am a JS Confirm
    click element    xpath=//*[@id="content"]/div/ul/li[3]/button
    alert should be present    I am a JS prompt
    close browser
Handling Frame
    open browser  ${url1}    ${browser}
    maximize browser window
    select frame  mce_0_ifr
    input text    id=tinymce    Hallo World
    sleep    1s
    close browser


    #select frame    frame-left          #name="frame-left"          #id,name,xpath

    #1.select frame name,id,xpath
    #2.click link
    #3unselect frame
    #4.select frame2 name,id,xpath


    #robot -d results Tests/Alerts.robot