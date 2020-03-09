***Settings***
Library      SeleniumLibrary
Library      ../../CustomLibrary/CSVLibrary.py
Library      Collections
Resource     ../../DataInput/Data.robot

*** Variables ***
${csv_path}         ..${/}..${/}DataInput${/}Data.csv

*** Keywords ***
Put Data Sub Document ID To CSV File
    [Arguments]       ${Document_data}     ${Sub_Document_ID}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Insert Data To CSV      Sub_Document_ID    0     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Insert Data To CSV      Sub_Document_ID    1     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Insert Data To CSV      Sub_Document_ID    2     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Insert Data To CSV      Sub_Document_ID    3     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Insert Data To CSV      Sub_Document_ID    4     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Insert Data To CSV      Sub_Document_ID    5     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Insert Data To CSV      Sub_Document_ID    6     ${Sub_Document_ID}  
    Run Keyword If     '${Document_data}'=='Article'
    ...              Insert Data To CSV      Sub_Document_ID    7     ${Sub_Document_ID}  
Put Data Owner Approve To CSV File
    [Arguments]       ${Document_data}     ${Owner_Approve}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Insert Data To CSV      Owner Approve    0     ${Owner_Approve}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Insert Data To CSV      Owner Approve    1     ${Owner_Approve} 
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Insert Data To CSV      Owner Approve    2     ${Owner_Approve}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Insert Data To CSV      Owner Approve    3     ${Owner_Approve} 
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Insert Data To CSV      Owner Approve    4     ${Owner_Approve}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Insert Data To CSV      Owner Approve    5     ${Owner_Approve}  
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Insert Data To CSV      Owner Approve    6     ${Owner_Approve}  
    Run Keyword If     '${Document_data}'=='Article'
    ...              Insert Data To CSV      Owner Approve    7     ${Owner_Approve}     
Insert Data To CSV
    [Arguments]       ${columnName}     ${rowIndex}    ${Value}             
    ${rowIndex}       evaluate     ${rowIndex}+1
    ${ListCSV}        read csv file to list    ${CURDIR}${/}${csv_path} 
    Empty Csv File    ${CURDIR}${/}${csv_path} 
    ${index}          Get Index From List      ${ListCSV[0]}    ${columnName}
    ${listUpdate}     Convert to list    ${ListCSV[${rowIndex}]}
    Remove From List       ${listUpdate}       ${index}
    Insert Into List       ${listUpdate}       ${index}      ${Value}
    Remove From List       ${ListCSV}   ${rowIndex}
    Insert Into List       ${ListCSV}   ${rowIndex}    ${listUpdate} 
    Append To Csv File     ${CURDIR}${/}${csv_path}       ${ListCSV}

Get Data From 
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${2}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}

Get Data From CSV Sub Document ID
    [Arguments]     ${Document_data}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              CSV_Data.Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              CSV_Data.Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              CSV_Data.Sub Document ID ยืมทรัพย์สินจาก supplier
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              CSV_Data.Sub Document ID ย้ายทรัพย์สิน
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              CSV_Data.Sub Document ID ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              CSV_Data.Sub Document ID ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              CSV_Data.Sub Document ID ขอแก้ไขข้อมูลทรัพย์สิน
    Run Keyword If     '${Document_data}'=='Article' 
    ...              CSV_Data.Sub Document ID Create Article

Get Data From CSV Owner Approve
    [Arguments]     ${Document_data}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              CSV_Data.Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              CSV_Data.Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              CSV_Data.Owner Approve ยืมทรัพย์สินจาก supplier
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              CSV_Data.Owner Approve ย้ายทรัพย์สิน
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              CSV_Data.Owner Approve ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              CSV_Data.Owner Approve ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              CSV_Data.Owner Approve ขอแก้ไขข้อมูลทรัพย์สิน
    Run Keyword If     '${Document_data}'=='Article' 
    ...              CSV_Data.Owner Approve Create Article

Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${0}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term GR
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${1}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ยืมทรัพย์สินจาก supplier
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${2}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ย้ายทรัพย์สิน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${3}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${4}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${5}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID ขอแก้ไขข้อมูลทรัพย์สิน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${6}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Sub Document ID Create Article
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Sub Document ID}=    Set Variable     &{Data[${7}]}[Sub Document ID]
    Set Test Variable    ${Sub Document ID}
Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${0}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term GR
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${1}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ยืมทรัพย์สินจาก supplier
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${2}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ย้ายทรัพย์สิน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${3}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${4}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${5}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve ขอแก้ไขข้อมูลทรัพย์สิน
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${6}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}
Owner Approve Create Article
    @{Data}=    read csv file to associative     ${CURDIR}${/}${csv_path} 
    ${Owner_Approve}=    Set Variable     &{Data[${7}]}[Owner Approve]
    Set Test Variable    ${Owner_Approve}

	
 