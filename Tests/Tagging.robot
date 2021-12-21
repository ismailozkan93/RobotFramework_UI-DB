*** Settings ***
Library    Selenium2Library
Resource    ../Resources/login_resources.robot

Suite Setup  log to console    Openmybrowser
Suite Teardown  log to console   close browser



*** Test Cases ***
TC1 User Registraion
    [Tags]    regression
    log to console    This is user reg Test
    log to console   user registration test is over
TC2 Login Test
    [Tags]    sanity
    log to console    This is login Test
    log to console    Login test is over
TC3 Change user settings
    [Tags]    regression
    log to console    This is changing user settings test
    log to console    Change user settings test is over
TC4 Logout Test
    [Tags]    sanity
    log to console    This is logout test
    log to console    Logout test is over


#robot -d results Tests/Tagging.robot
#robot -d results --include=sanity Tests/Tagging.robot
#robot -d results -i sanity -i regression Tests/Tagging.robot
#robot -d results -e sanity Tests/Tagging.robot