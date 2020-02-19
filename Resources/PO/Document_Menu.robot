***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot

***Keywords***
Mouse Over Menu Document
    Select Frame     ${Locator_Frame_Header}
    Wait Until Element Is Visible    ${Locator_Document}       
    Mouse Over       ${Locator_Document}     
Click Transection stock
    Wait Until Element Is Visible     ${Locator_Transectionstock}    
    Click Element    ${Locator_Transectionstock}
    Unselect Frame
Select Data & Verify Document Type Tab 
    Select Frame     ${Locator_Frame_Body}  
    Wait Until Element Is Visible     ${Locator_Document_type} 
    Select From List By label    ${Locator_Document_type}     @{Document Type}[1]
    Click Button     ${Locator_Next} 
    
Select Data & Verify General Information Tab
    Select From List By label     ${Locator_Business_Group}    @{Business Group}[1]
    Click Button     ${Locator_Project_Button} 
    Select Frame     ${Locator_Frame_simpleIframe}
    input text       ${Locator_PONO}     ${PONO} 
    Click Button     ${Locator_search_Button} 
    Wait Until Element Is Visible    ${Locator_Select_Project}
    Click Element    ${Locator_Select_Project}
    Unselect Frame
    Select Frame     ${Locator_Frame_Body} 
    Wait Until Element Is Visible    ${Locator_Project_Text}
    Element Text Should Be    ${Locator_Project_Text}    ${Project_Name}
    input text       ${Locator_Title}    @{Title}[0]
    Click Button     ${Locator_Next_Button} 
    Unselect Frame
Select Data & Verify Location Information Tab
    Select Frame     ${Locator_Frame_Body}  
    Select From List By label    ${Locator_Location_type}    @{Location_type}[0]
    Click Button     ${Locator_Location_search} 
    Select Frame     ${Locator_Frame_simpleIframe}
    Select From List By label    ${Locator_Region}           @{Region}[0]
    Select From List By label    ${Locator_MC zone}          @{MC_zone}[0]
    Select From List By label    ${Locator_Province}         @{Province}[0]
    Click Button     ${Locator_search_Location}
    Click Element    @{Locator_Site_Code}[0]
    Unselect Frame
    Select Frame     ${Locator_Frame_Body}
    Click Button     ${Locator_Location_search} 
    Unselect Frame
Select Data & Verify PO Item Information Tab