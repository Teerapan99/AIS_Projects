*** Settings ***
Library       SeleniumLibrary
Library       openpyxl

***Variables***
${excel}                          Data.xlsx

***Keywords***
Put Data to Excel Sub Document ID
    [Arguments]     ${Sub_Document_ID}
    ${wb}        Load Workbook      ${CURDIR}/${excel}
    ${ws}        Set Variable     ${wb['DataID']}
    Evaluate     $ws.cell ${2,1,'${Sub_Document_ID}'}
    Evaluate     $wb.save('${excel}')

Put Data to Excel Owner Approve
    [Arguments]     ${Owner_Approve}
    ${wb}        Load Workbook      ${CURDIR}/${excel}
    ${ws}        Set Variable     ${wb['DataID']}
    Evaluate     $ws.cell ${2,2,'${Owner_Approve}'}
    Evaluate     $wb.save('${excel}')

Get Data From Excel Sub Document ID
    ${wbget}      Load Workbook           ${CURDIR}/${excel}
    ${wsget}      Set Variable    ${wbget.get_sheet_by_name('DataID')}
    ${Sub_Document_ID}    Set Variable    ${wsget.cell(2,1).value}
    Set Test Variable    ${Sub_Document_ID}
  

Get Data From Excel Owner Approve
    ${wbget}      Load Workbook           ${CURDIR}/${excel}
    ${wsget}    Set Variable    ${wbget.get_sheet_by_name('DataID')}
    ${Owner_Approve}    Set Variable    ${wsget.cell(2,2).value}
    Set Test Variable    ${Owner_Approve}