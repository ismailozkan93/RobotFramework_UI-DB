*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect to Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}}  ${DBPort}

*** Variables ***
${DBHost}    107.182.225.121
${DBName}    mydb
${DBUser}    techprodb_user
${DBPass}    Techpro_@126
${DBPort}    3306

*** Test Cases ***
#Create person table
    #${output}=    execute sql string    create table person(id integer,first_name varchar(20),Last_name varchar(20))
    #log to console    ${output}
    #should be equal as strings    ${output}    None
    #single record
    #${output}=    execute sql script    insert into person values(101,"John","canady");

    #multiple record
    #${output}=    execute sql script    ./TestData/mydb_person_insertData.sql
    #log to console    ${output}
    #should be equal as strings    ${output}    None

#Check David record present in Person table
    #check if exists in database    select id from mydb.person where first_name="David";

#Check Jio record present in Person table
    #check if not exists in database    select id from mydb.person where first_name="Jio";

#Check Person table exist in my Daabase
    #table must exist    person



#robot -d results Tests/DBTesting.robot