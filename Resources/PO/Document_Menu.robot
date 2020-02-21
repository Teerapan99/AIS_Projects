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
    [Arguments]      ${Document_data}
    Select Frame     ${Locator_Frame_Body}  
    Wait Until Element Is Visible     ${Locator_Document_type} 
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]'
    ...                Select From List By label    ${Locator_Document_type}     ${Document_data}
    Click Button     ${Locator_Next} 
    Unselect Frame
Select Data & Verify General Information Tab
    [Arguments]      ${Business_data}
    Run Keyword If   '${Business_data}'=='@{Business Group}[1]'    
    ...              Run Keywords
    ...              Select Frame     ${Locator_Frame_Body}
    ...    AND       Select From List By label     ${Locator_Business_Group}    ${Business_data}
    ...    AND       Click Button     ${Locator_Project_Button} 
    ...    AND       General Information (Document type = ตรวจรับทรัพย์สินใหม่แบบ Term GR)
    ...    AND       Select Frame     ${Locator_Frame_Body} 
    ...    AND       Wait Until Element Is Visible    ${Locator_Project_Text}
    ...    AND       Element Text Should Be    ${Locator_Project_Text}    ${Project_Name}
    ...    AND       input text       ${Locator_Title}    @{Title}[0]
    Click Button     ${Locator_Next_Button} 
    Unselect Frame
    Set Test Variable     ${Business_data}
General Information (Document type = ตรวจรับทรัพย์สินใหม่แบบ Term GR)
    Select Frame     ${Locator_Frame_simpleIframe}
    input text       ${Locator_PONO}     ${PONO} 
    Click Button     ${Locator_search_Button} 
    Wait Until Element Is Visible    ${Locator_Select_Project}
    Click Element    ${Locator_Select_Project}
    Unselect Frame

Select Data & Verify Location Information Tab
    [Arguments]      ${Location_data}    ${Region_data}
    Run Keyword If    '${Location_data}'=='@{Location_type}[0]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_Body}  
    ...    AND        Select From List By label    ${Locator_Location_type}    ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search} 
    ...    AND        Search Location    ${Region_data} 
    Select Frame     ${Locator_Frame_Body} 
    Click Button     ${Locator_Next_Button} 
    Unselect Frame
Search Location 
    [Arguments]      ${Region_data}
    Run Keyword If    '${Region_data}'=='@{Region}[0]'   
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Select From List By label    ${Locator_MC zone}          @{MC_zone}[0]
    ...    AND        Select From List By label    ${Locator_Province}         @{Province}[0]
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[0]
    ...    AND        Unselect Frame
 
Select Data & Verify PO Item Information Tab 
    Run Keyword If    '${Business_data}'=='@{Business Group}[1]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body} 
    ...    AND        Click Button     ${Locator_Select_PONO}  
    ...    AND        Search Popup PO
    ...    AND        Update Information PO Item  
    Select Frame     ${Locator_Frame_Body}  
    Click Button      ${Locator_Button_Next_POItem}  
    Unselect Frame    
Search Popup PO
    Select Frame     ${Locator_Frame_simpleIframe}
    Input Text       ${Locator_PONO}    ${PONO}
    Click Button     ${Locator_search_Location}
    Sleep    1s
    Click Element    @{Locator_Select_PO}[0]
    Execute JavaScript    window.scrollTo(0,1000)
    Click Button     ${Locator_Button_OK_PO}
    Unselect Frame
Update Information PO Item
    Select Frame     ${Locator_Frame_Body} 
    Click Element    ${Locator_Image_Edit}
    Input Text       ${Locator_Receive_quantity}    ${quantity}
    Click Button     ${Locator_saveDetail} 
    Unselect Frame
Select Data & Verify Article Information Tab
    Select Frame     ${Locator_Frame_Body}
    Click Element    ${Locator_Image_add}
    Operation Information
    Select Frame     ${Locator_Frame_Body}
    Click Button     ${Locator_Button_Next_Article}
    Unselect Frame
Operation Information   
    ${Random_Number}    Generate Random String   8    [NUMBERS]
    Select Frame     ${Locator_Frame_simpleIframe}
    #Can't select datepicker
    # Click Element    ${Locator_Outofwarranty}   
    # Click Element    ${Locator_datepicker}
    Input text       ${Locator_serialNo}    ${serialNo}${Random_Number}
    Click Button     ${Locator_Button_operAdd} 
    Execute JavaScript    window.scrollTo(0,100)
    Click Button     ${Locator_Button_operOk}
    Unselect Frame
Select Data & Verify Duplicated Serial No Detail Tab
    Select Frame     ${Locator_Frame_Body}
    Element Text Should Be    ${Locator_notduplicate_serialNo}    ${Validate_not_duplicate_serialNo}
    Click Button     ${Locator_Button_Next_Duplicated} 
    Unselect Frame
Select Data & Verify Material Information Tab
    Select Frame     ${Locator_Frame_Body}
    Click Button     ${Locator_Button_Next_Material}
    Unselect Frame
Select Data & Verify Cost Information Tab
    Select Frame     ${Locator_Frame_Body}
    Click Button     ${Locator_Button_Next_Cost}  
    Unselect Frame
Select Data & Verify Summary Information Tab
    Select Frame     ${Locator_Frame_Body}
    Execute JavaScript    window.scrollTo(0,2000)
    Click Button     ${Locator_Button_Save&Summit}
    Alert Should Be Present    ${Alert_Present}     
    Unselect Frame
Select Data & Verify Generate Document Tab
    Select Frame     ${Locator_Frame_Body}
    ${Sub_Document_ID}    Get Text    ${Locator_Sub Document ID} 
    Click Button     ${Locator_Button_Generate} 
    Set Test Variable     ${Sub_Document_ID}  
    Unselect Frame
Select Data & Verify Select for approve Tab 
    Select Frame     ${Locator_Frame_Body}
    Select Frame     ${Locator_Frame_simpleIframe}
    Click Element    ${Locator_Select}
    Click Element    ${Locator_User_approve}  
    Click Element    ${Locator_select_right}      
    Click Element    ${Locator_Button_approve_OK}  
    Unselect Frame
    Select Frame     ${Locator_Frame_Body}
    Click Element    ${Locator_Button_save}
    Alert Should Be Present    ${Alert_Present_save_approve}    
    Unselect Frame   

