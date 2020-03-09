*** Settings ***
Resource          ../Variables_Projects.robot
Resource          Excel_Data.robot
Resource          ../../DataInput/Data.robot

***Keywords***
Connect Database AAM
    connect to database   cx_Oracle   ${DBName}    
    ...                               ${DBUser}    
    ...                               ${DBPass}
    ...                               ${DBHost}    
    ...                               ${DBPort}
    ...                               ${DBService}
Get Data Owner ID For Approve IN Database AAM
    [Arguments]      ${Document_data} 
    Get Data From CSV Sub Document ID   ${Document_data} 
    ${Output}    Query       select SUBSTR(owner_id,1,8) from wf_ur_stock_work_item i where i.sub_doc_id='${Sub_Document_ID}'
    ${Owner_Approve}    Set Variable    ${Output[0][0]}
    # Put Data to Excel Owner Approve     ${Document_data}     ${Owner_Approve}
    Put Data Owner Approve To CSV File    ${Document_data}     ${Owner_Approve}
Get Data Owner ID For Approve Article IN Database AAM
    [Arguments]      ${Document_data} 
    Get Data From CSV Sub Document ID     ${Document_data} 
    ${Output}    Query       select SUBSTR(owner_id,1,8) from WF_UR_ARTICLE_work_item where sub_doc_id='${Sub_Document_ID}'
    ${Owner_Approve}    Set Variable    ${Output[0][0]}
    # Put Data to Excel Owner Approve     ${Document_data}     ${Owner_Approve}
    Put Data Owner Approve To CSV File    ${Document_data}     ${Owner_Approve}

Disonnect Database AAM
    Disconnect From Database

Get&Verify Data Owner Approve IN Database AAM
    [Arguments]      ${Document_data} 
    Connect Database AAM
    Get Data Owner ID For Approve IN Database AAM      ${Document_data}      
    Disonnect Database AAM
Get&Verify Data Owner Approve Article IN Database AAM
    [Arguments]      ${Document_data} 
    Connect Database AAM
    Get Data Owner ID For Approve Article IN Database AAM    ${Document_data}   
    Disonnect Database AAM