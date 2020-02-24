*** Settings ***
Resource          ../Variables_Projects.robot
Resource          ../../Excel_Data.robot

***Keywords***
Connect Database AAM
    connect to database   cx_Oracle   ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}    ${DBService}
Get Data Owner ID For Approve IN Database AAM
    Get Data From Excel Sub Document ID
    Log to console       \n\nID${Sub_Document_ID}
    ${Output}    Query       select * from wf_ur_stock_work_item i where i.sub_doc_id='${Sub_Document_ID}'
    ${Owner_Approve}    Set Variable    ${Output[0][6]}
    Put Data to Excel Owner Approve     ${Owner_Approve}
Disonnect Database AAM
    Disconnect From Database

Get&Verify Data Owner Approve IN Database AAM
    Connect Database AAM
    Get Data Owner ID For Approve IN Database AAM  
    Disonnect Database AAM
