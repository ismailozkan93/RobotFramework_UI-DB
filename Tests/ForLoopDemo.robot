*** Settings ***
Library    Selenium2Library

*** Variables ***


*** Test Cases ***
#Forloop1
    #FOR    ${i}    IN RANGE    1    10
    #log to console    ${i}
    #END

#Forloop2
    #FOR    ${I}    IN  1 2 3 4 5 6 7 8
    #LOG TO CONSOLE    ${I}
    #END

#Forloop3
 #   @{items}    create list    1 2 3 4 5 6
  #  FOR    ${I}    IN   @{items}
   # log to console    ${I}
   # END

#ForLoop4
 #  FOR  ${I}  IN  JOHN  DAVID  SMITH  SCOTT
  # LOG TO CONSOLE    ${I}
   #END

#ForLoop5
 #  @{nameslist}    create list   JOHN  DAVID  SMITH  SCOTT
  # FOR  ${I}  IN  @{nameslist}
   #LOG TO CONSOLE    ${I}
   #END

Forloop6withExit
    @{items}    create list    1 2 3 4 5 6
    FOR   ${I}    IN   @{items}
    log to console    ${I}
    exit for loop if    ${I}==3
    END









#robot -d results Tests/ForLoopDemo.robot