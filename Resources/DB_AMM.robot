*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup        Connect To Database     pymysql    ${DBName}     ${DBUser}
                   ...    ${DBPass}   ${DBHost}    ${DBPort}
Suite Teardown     Disconnect From Database
*** Variables ***
${DBName}    AACMTST
${DBUser}    aam
${DBPass}    aam
${DBHost}    10.208.152.170
${DBPort}    aacmtst

*** Test Case ***
Select 
     ${Output}=  Execute Sql String     select * from aam.trn_batch_job bj where bj.doc_no='T0220-0002850-01';
     Log To Console    ${Output}