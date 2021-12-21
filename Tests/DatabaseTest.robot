*** Settings ***
Library    DatabaseLibrary
Library    os

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
#Suite Teardown    Disconnect From Database

*** Variables ***
${DBHost}    157.230.48.97
${DBName}    mydb
${DBUser}    techprodb_user
${DBPass}    Techpro_@126
${DBPort}    5432


*** Test Cases ***
    Create country table
    ${output}=    execute sql string    create table country(id integer,name varchar(20),states varchar(20))
    log to console    ${output}

    ${output1}=    execute sql script    insert into country values(101,"John","canady");
    log to console    ${output1}




## |select * from tp_country |name|










#robot -d results Tests/DatabaseTest.robot
#dbname=TestDB
#DBusername=testuser
#dbuserpass=test123
#dbhost=CORE
#DBPORT=1433








