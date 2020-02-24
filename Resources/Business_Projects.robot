***Settings***
Resource           ./PO/Document_Menu.robot
Resource           ./PO/Owner_Approve.robot
Resource           ./PO/DB_AAM.robot
Resource           Common.robot
Resource           Variables_Projects.robot
Resource           ../Excel_Data.robot
***Keywords***
Create Transection stock 
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[1]
    Document_Menu.Select Data & Verify General Information Tab     @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Location_type}[0]    @{Region}[0]
    Document_Menu.Select Data & Verify PO Item Information Tab
    Document_Menu.Select Data & Verify Article Information Tab
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab
    Document_Menu.Select Data & Verify Material Information Tab
    Document_Menu.Select Data & Verify Cost Information Tab
    Document_Menu.Select Data & Verify Summary Information Tab
    Document_Menu.Select Data & Verify Generate Document Tab
    Document_Menu.Select Data & Verify Select for approve Tab       @{User_approve}[1]
    Common.Close AAM Web
Get Data Owner Approve IN Database AAM
    DB_AAM.Get&Verify Data Owner Approve IN Database AAM
Owner Approve Transection stock
    Excel_Data.Get Data From Excel Sub Document ID   
    Excel_Data.Get Data From Excel Owner Approve      
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock     ${Sub_Document_ID}
    Common.Close AAM Web
