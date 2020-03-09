*** Settings ***
Library       SeleniumLibrary
Library       openpyxl
Resource      ../../DataInput/Data.robot

***Variables***
${excel}       ../../../aam-transform-jeap-robotscript/DataInput/Data.xlsx

***Keywords***
Load Workbook excel
     ${wb}        Load Workbook      ${CURDIR}/${excel}
     ${ws}        Set Variable     ${wb['DataID']}   
     Set Test Variable    ${wb} 
     Set Test Variable    ${ws} 
Put Data to Excel Sub Document ID
    [Arguments]     ${Document_data}     ${Sub_Document_ID}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${2,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${3,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${4,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${5,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${6,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${7,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${8,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='Article' 
    ...              Run Keywords 
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${9,2,'${Sub_Document_ID}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    

Put Data to Excel Owner Approve
    [Arguments]     ${Document_data}    ${Owner_Approve}
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${2,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${3,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${4,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${5,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${6,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${7,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${8,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')
    Run Keyword If     '${Document_data}'=='Article' 
    ...              Run Keywords               
    ...              Load Workbook excel
    ...    AND       Evaluate     $ws.cell ${9,3,'${Owner_Approve}'}
    ...    AND       Evaluate     $wb.save('${excel}')

Get Data From Excel Sub Document ID
    [Arguments]     ${Document_data}
    Get Data From Excel
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Sub Document ID ยืมทรัพย์สินจาก supplier
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Sub Document ID ย้ายทรัพย์สิน
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Sub Document ID ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Sub Document ID ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Sub Document ID ขอแก้ไขข้อมูลทรัพย์สิน
    Run Keyword If     '${Document_data}'=='Article' 
    ...              Sub Document ID Create Article

Get Data From Excel Owner Approve
    [Arguments]     ${Document_data}
    Get Data From Excel
    Run Keyword If     '${Document_data}'=='@{Document Type}[0]' 
    ...              Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' 
    ...              Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term GR
    Run Keyword If     '${Document_data}'=='@{Document Type}[2]' 
    ...              Owner Approve ยืมทรัพย์สินจาก supplier
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' 
    ...              Owner Approve ย้ายทรัพย์สิน
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' 
    ...              Owner Approve ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    Run Keyword If     '${Document_data}'=='@{Document Type}[5]' 
    ...              Owner Approve ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    Run Keyword If     '${Document_data}'=='@{Document Type}[6]' 
    ...              Owner Approve ขอแก้ไขข้อมูลทรัพย์สิน
    Run Keyword If     '${Document_data}'=='Article' 
    ...              Owner Approve Create Article
Get Data From Excel
    ${wbget}        Load Workbook           ${CURDIR}/${excel}
    ${wsget}        Set Variable    ${wbget.get_sheet_by_name('DataID')}
    Set Test Variable     ${wbget} 
    Set Test Variable     ${wsget} 
Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(2,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ตรวจรับทรพย์สินใหม่แบบ Term GR
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(3,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ยืมทรัพย์สินจาก supplier
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(4,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ย้ายทรัพย์สิน
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(5,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(6,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(7,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID ขอแก้ไขข้อมูลทรัพย์สิน
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(8,2).value}
    Set Test Variable    ${Sub_Document_ID}
Sub Document ID Create Article
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(9,2).value}
    Set Test Variable    ${Sub_Document_ID}
Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term Non GR
    ${Owner_Approve}    Set Variable    ${wsget.cell(2,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ตรวจรับทรพย์สินใหม่แบบ Term GR
    ${Owner_Approve}    Set Variable    ${wsget.cell(3,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ยืมทรัพย์สินจาก supplier
    ${Owner_Approve}    Set Variable    ${wsget.cell(4,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ย้ายทรัพย์สิน
    ${Owner_Approve}    Set Variable    ${wsget.cell(5,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ
    ${Owner_Approve}    Set Variable    ${wsget.cell(6,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน
    ${Owner_Approve}    Set Variable    ${wsget.cell(7,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve ขอแก้ไขข้อมูลทรัพย์สิน
    ${Owner_Approve}    Set Variable    ${wsget.cell(8,3).value}
    Set Test Variable    ${Owner_Approve}
Owner Approve Create Article
    ${Owner_Approve}    Set Variable    ${wsget.cell(9,3).value}
    Set Test Variable    ${Owner_Approve}
