***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot
Resource          Excel_Data.robot

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
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]' or '${Document_data}'=='@{Document Type}[2]' or '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[5]' or '${Document_data}'=='@{Document Type}[6]'
    ...                Select From List By label    ${Locator_Document_type}     ${Document_data}
    Click Button     ${Locator_Next} 
    Unselect Frame
Select Data & Verify General Information Tab
    [Arguments]      ${Document_data}    ${Business_data}
    ${Random_Number}    Generate Random String   8    [NUMBERS]
    Run Keyword If   '${Document_data}'=='@{Document Type}[1]'    
    ...              Run Keywords
    ...              Select Frame     ${Locator_Frame_Body}
    ...    AND       Wait Until Element Is Visible     ${Locator_Business_Group}
    ...    AND       Select From List By label     ${Locator_Business_Group}    ${Business_data}
    ...    AND       Click Button     ${Locator_Project_Button} 
    ...    AND       Search Project Name
    ...    AND       Select Frame     ${Locator_Frame_Body} 
    ...    AND       Wait Until Element Is Visible    ${Locator_Project_Text}
    ...    AND       Element Text Should Be    ${Locator_Project_Text}    ${Project_Name}
    ...    AND       input text       ${Locator_Title}    @{Title}[0]
    Run Keyword If   '${Document_data}'=='@{Document Type}[2]'    
    ...              Run Keywords
    ...              Select Frame     ${Locator_Frame_Body}
    ...    AND       Wait Until Element Is Visible     ${Locator_Business_Group}
    ...    AND       List Selection Should Be     ${Locator_Business_Group}    ${Business_data}
    ...    AND       Click Button     ${Locator_company_Owner_Search}
    ...    AND       Company owner Search
    ...    AND       Select Frame     ${Locator_Frame_Body} 
    ...    AND       Wait Until Element Is Visible    ${Locator_companyOwnerText} 
    ...    AND       Element Text Should Be    ${Locator_companyOwnerText}     ${CompanyCode}
    ...    AND       input text       ${Locator_Title}    @{Title}[0]
    ...    AND       Radio Button Should Be Set To    ${Locator_mainDocIdFlag}     N 
    ...    AND       List Selection Should Be    ${Locator_companyAdminCode}     AWN  
    ...    AND       Radio Button Should Be Set To    ${Locator_borrowType}     P
    Run Keyword If   '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[6]'  
    ...              Run Keywords
    ...              Select Frame     ${Locator_Frame_Body}
    ...    AND       Wait Until Element Is Visible     ${Locator_Business_Group}
    ...    AND       Select From List By label     ${Locator_Business_Group}    ${Business_data}
    ...    AND       input text       ${Locator_Title}    @{Title}[0]
    Run Keyword If   '${Document_data}'=='@{Document Type}[5]'    
    ...              Run Keywords
    ...              Select Frame     ${Locator_Frame_Body}
    ...    AND       Wait Until Element Is Visible     ${Locator_Company_owner} 
    ...    AND       Select From List By label     ${Locator_Company_owner}    @{Company owner}[0]     
    ...    AND       List Selection Should Be     ${Locator_Service_group}    ${Business_data}
    ...    AND       Click Button     ${Locator_Project_Button} 
    ...    AND       Search Project Name
    ...    AND       Select Frame     ${Locator_Frame_Body} 
    ...    AND       Wait Until Element Is Visible    ${Locator_Project_Text}
    ...    AND       Element Text Should Be    ${Locator_Project_Text}    ${Project_Name}
    ...    AND       input text       ${Locator_Title}      @{Title}[0]
    ...    AND       input text       ${Locator_Remark}     ${Remark}
    ...    AND       input text       ${Locator_Memo_ID}    ${Random_Number}
    ...    AND       Choose File      ${Locator_attachFile}       ${CURDIR}${/}${Locator_Image_File}   
    Click Button     ${Locator_Next_Button} 
    Unselect Frame
    Set Test Variable     ${Business_data}

Search Project Name
    Select Frame     ${Locator_Frame_simpleIframe}
    Wait Until Element Is Visible        ${Locator_PONO}
    input text       ${Locator_PONO}     ${PONO} 
    Click Button     ${Locator_search_Button} 
    Wait Until Element Is Visible    ${Locator_Select_Project}
    Click Element    ${Locator_Select_Project}
    Unselect Frame
Company owner Search
    Select Frame     ${Locator_Frame_simpleIframe}
    Input Text       ${Locator_companyCode}     ${CompanyCode}
    Click Button     ${Locator_companysearch_button} 
    Click Element    ${Locator_company_select} 
    Unselect Frame

Select Data & Verify Location Information Tab
    [Arguments]      ${Document_data}    ${Location_data}    ${Region_data}   
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]' or '${Document_data}'=='@{Document Type}[2]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Location_type}   
    ...    AND        Select From List By label    ${Locator_Location_type}    ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search} 
    ...    AND        Search Location    ${Document_data}    ${Region_data} 
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]'   
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Location_From}   
    ...    AND        Select From List By label    ${Locator_Location_From}     ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search_Form} 
    ...    AND        From Location      ${Document_data}    ${Region_data}
    ...    AND        Select Frame       ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Location_To}  
    ...    AND        Select From List By label    ${Locator_Location_To}       ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search_To} 
    ...    AND        To Location        ${Document_data}    ${Region_data}
    Run Keyword If    '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[6]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Location_type}   
    ...    AND        Select From List By label    ${Locator_Location_type}    ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search} 
    ...    AND        Search Location    ${Document_data}    ${Region_data} 
    Run Keyword If    '${Document_data}'=='@{Document Type}[5]'  
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Location_type}   
    ...    AND        Select From List By label    ${Locator_Location_type}    ${Location_data}
    ...    AND        Click Button       ${Locator_Location_search} 
    ...    AND        Search Location    ${Document_data}    ${Region_data} 
    Select Frame     ${Locator_Frame_Body} 
    Click Button     ${Locator_Next_Button} 
    Unselect Frame
Search Location 
    [Arguments]      ${Document_data}    ${Region_data}
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]' or '${Document_data}'=='@{Document Type}[2]'  
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Select From List By label    ${Locator_MC zone}          @{MC_zone}[0]
    ...    AND        Select From List By label    ${Locator_Province}         @{Province}[0]
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[1]
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[6]'  
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Select From List By label    ${Locator_MC zone}          @{MC_zone}[1]
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[0]
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[4]'   
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[0]
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[5]'   
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Execute JavaScript     window.scrollTo(0, document.body.scrollHeight)    
    ...    AND        Click Element    @{Locator_Site_Code}[3]
    ...    AND        Unselect Frame
  
From Location
    [Arguments]      ${Document_data}    ${Region_data}
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Select From List By label    ${Locator_MC zone}          @{MC_zone}[2]
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[0]
    ...    AND        Unselect Frame
To Location
    [Arguments]      ${Document_data}    ${Region_data}
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    ${Locator_Region}
    ...    AND        Select From List By label    ${Locator_Region}           ${Region_data}
    ...    AND        Select From List By label    ${Locator_MC zone}          @{MC_zone}[3]
    ...    AND        Click Button     ${Locator_search_Location}
    ...    AND        Click Element    @{Locator_Site_Code}[0]
    ...    AND        Unselect Frame
 
Select Data & Verify PO Item Information Tab 
    Run Keyword If    '${Business_data}'=='@{Business Group}[1]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body} 
    ...    AND        Wait Until Element Is Visible    ${Locator_Select_PONO}  
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
    [Arguments]      ${Document_data}
    ${Random_Number}    Generate Random String   8    [NUMBERS]
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]'   
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Image_add}
    ...    AND        Click Element    ${Locator_Image_add}
    ...    AND        Operation Information
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Button_Next_Article}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[2]'
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Add_Article}
    ...    AND        List of Article     ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}       
    ...    AND        Click Element    ${Locator_Update} 
    ...    AND        Wait Until Element Is Visible    ${Locator_quantity}       
    ...    AND        input Text       ${Locator_quantity}      1
    ...    AND        Click Button     ${Locator_saveDetail} 
    ...    AND        Select From List By Label    ${Locator_Select_selCol}    Qty 
    ...    AND        Input Text       ${Locator_newValueText}     ${Random_Number}
    ...    AND        Click Button     ${Locator_Button_Next_Article} 
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[4]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Add_Article}
    ...    AND        List of Article     ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}       
    ...    AND        Click Element    ${Locator_Update}
    ...    AND        Click Element    ${Locator_addReqQty}           
    ...    AND        Update of Article    ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Save_Article}
    ...    AND        Click Button     ${Locator_Nextbtn_Article}   
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[5]'   
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Add_Article}
    ...    AND        List of Article     ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}       
    ...    AND        Click Element    ${Locator_Update}
    ...    AND        Click Element    ${Locator_addReqQty}           
    ...    AND        Update of Article    ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Save_Article}
    ...    AND        Click Button     ${Locator_Nextbtn_Article}   
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[6]'    
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Add_Article}
    ...    AND        List of Article     ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}       
    ...    AND        Click Element    ${Locator_Update}
    ...    AND        Wait Until Element Is Visible     ${Locator_addEditQty} 
    ...    AND        Click Element    ${Locator_addEditQty}           
    ...    AND        Update of Article    ${Document_data}
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Batteryremark}
    ...    AND        Input Text       ${Locator_Batteryremark}      @{Document Type}[6] 
    ...    AND        Click Button     ${Locator_Battery_saveDetail}
    ...    AND        Click Button     ${Locator_Battery_Next}   
    ...    AND        Unselect Frame
Operation Information   
    ${Random_Number}    Generate Random String   8    [NUMBERS]
    Select Frame     ${Locator_Frame_simpleIframe}
    Wait Until Element Is Visible    ${Locator_serialNo}    
    Input text       ${Locator_serialNo}    ${serialNo}${Random_Number}
    Click Button     ${Locator_Button_operAdd} 
    Execute JavaScript    window.scrollTo(0,100)
    Click Button     ${Locator_Button_operOk}
    Unselect Frame

List of Article
    [Arguments]      ${Document_data}
    Run Keyword If    '${Document_data}'=='@{Document Type}[2]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible     ${Locator_articleGroup}
    ...    AND        Select From List By label         ${Locator_articleGroup}       @{articleGroup}[3]
    ...    AND        Click Button       ${Locator_search_article}
    ...    AND        Wait Until Element Is Visible      ${Locator_articleSub_Select} 
    ...    AND        Select Checkbox    ${Locator_articleSub_Select}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible     ${Locator_articleGroup}
    ...    AND        Select From List By label         ${Locator_articleGroup}       @{articleGroup}[0]
    ...    AND        Click Button       ${Locator_search_article}
    ...    AND        Wait Until Element Is Visible      ${Locator_article_Select} 
    ...    AND        Select Checkbox    ${Locator_article_Select} 
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[4]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible     ${Locator_articleGroup}
    ...    AND        Select From List By label         ${Locator_articleGroup}       @{articleGroup}[0]
    ...    AND        Click Button       ${Locator_search_article}
    ...    AND        Wait Until Element Is Visible      ${Locator_article_Select} 
    ...    AND        Select Checkbox    ${Locator_article_Select} 
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[5]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible     ${Locator_articleGroup}
    ...    AND        Select From List By label         ${Locator_articleGroup}       @{articleGroup}[0]
    ...    AND        Click Button       ${Locator_search_article}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Wait Until Element Is Visible      ${Locator_article_Select} 
    ...    AND        Select Checkbox    ${Locator_article_Select} 
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[6]'    
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible     ${Locator_articleGroup}
    ...    AND        Select From List By label         ${Locator_articleGroup}       @{articleGroup}[1]
    ...    AND        Click Button       ${Locator_search_article}
    ...    AND        Wait Until Element Is Visible     ${Locator_EditAsset_Select}         
    ...    AND        Select Checkbox     ${Locator_EditAsset_Select}     
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
Update of Article
    [Arguments]      ${Document_data}
    ${Today_Date}=      Get Current Date    result_format=%d-%m-%Y  
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]'
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        input Text         ${Locator_reqQty}     1
    ...    AND        Select Checkbox    ${Locator_Select_reqQty} 
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[4]'  
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        input Text         ${Locator_reqQty}     1
    ...    AND        Select Checkbox    ${Locator_Select_Write}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[5]'  
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        input Text         ${Locator_reqQty}     1
    ...    AND        Select Checkbox    ${Locator_Select_Return}  
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame
    Run Keyword If    '${Document_data}'=='@{Document Type}[6]'  
    ...               Run Keywords
    ...               Select Frame       ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible      ${Locator_Battery_Select} 
    ...    AND        Select Checkbox    ${Locator_Battery_Select} 
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button       ${Locator_Button_Battery_Select}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Element      ${Locator_Button_Battery_Update} 
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Wait Until Element Is Visible     ${Locator_Out_Of_Warranty}
    ...    AND        Execute JavaScript    document.getElementById("outOfWarranty").disabled = false
    ...    AND        Input Text     ${Locator_Out_Of_Warranty}    ${Today_Date}  
    ...    AND        Execute JavaScript    document.getElementById("installationDate").disabled = false
    ...    AND        Input Text     ${Locator_installationDate}   ${Today_Date}   
    ...    AND        Select From List By Label    ${Locator_Battery_Type}     New 
    ...    AND        Click Button       ${Locator_batterySave}
    ...    AND        Click Button       ${Locator_btnOk}
    ...    AND        Unselect Frame

Select Data & Verify Duplicated Serial No Detail Tab
    [Arguments]      ${Document_data}
    Log to console    ${Document_data} 
    Run Keyword If    '${Document_data}'=='@{Document Type}[1]'  
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Button_Next_Duplicated}
    ...    AND        Element Text Should Be    ${Locator_notduplicate_serialNo}    @{Validate_not_duplicate_serialNo}[0]
    Run Keyword If    '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[5]'     
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Button_Next_Duplicated}
    ...    AND        Element Text Should Be    ${Locator_notduplicate_serialNo}    @{Validate_not_duplicate_serialNo}[1]
    Click Button      ${Locator_Button_Next_Duplicated} 
    Unselect Frame
Select Data & Verify Material Information Tab
    Select Frame     ${Locator_Frame_Body}
    Wait Until Element Is Visible     ${Locator_Button_Next_Material}
    Click Button     ${Locator_Button_Next_Material}
    Unselect Frame
Select Data & Verify Cost Information Tab
    Select Frame     ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Button_Next_Cost}
    Click Button     ${Locator_Button_Next_Cost}  
    Unselect Frame
Select Data & Verify Software Information
    Select Frame     ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Button_Next_Cost}
    Click Button     ${Locator_Button_Next_Cost}  
    Unselect Frame
Select Data & Verify Pending Cost Information
    [Arguments]      ${Document_data}
    Run Keyword If     '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[5]'
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Click Button     ${Locator_Button_Next_PendingCost}
    ...    AND        Unselect Frame

Select Data & Verify Summary Information Tab
    [Arguments]      ${Document_data}
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' or '${Document_data}'=='@{Document Type}[2]' or '${Document_data}'=='@{Document Type}[6]'     
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button     ${Locator_Button_Save&Summit}
    ...    AND        Alert Should Be Present    ${Alert_Present_save&submit}
    ...    AND        Unselect Frame
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[4]' or '${Document_data}'=='@{Document Type}[5]'        
    ...               Run Keywords
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    ...    AND        Click Button     ${Locator_Button_btSaveSubmit}
    ...    AND        Alert Should Be Present    ${Alert_Present_save&submit_Move}  
    ...    AND        Unselect Frame


Select Data & Verify Generate Document Tab
    [Arguments]      ${Document_data}
    Select Frame     ${Locator_Frame_Body}
    Wait Until Element Is Visible     ${Locator_Sub_Document_ID}  
    ${Sub_Document_ID}    Get Text    ${Locator_Sub_Document_ID}   
    Click Button     ${Locator_Button_Generate} 
    Unselect Frame
    # Put Data to Excel Sub Document ID    ${Document_data}    ${Sub_Document_ID}   
    Put Data Sub Document ID To CSV File      ${Document_data}    ${Sub_Document_ID}   
Select Data & Verify Select for approve Tab 
    [Arguments]      ${Document_data}    ${User_Appove}
    Run Keyword If     '${Document_data}'=='@{Document Type}[1]' or '${Document_data}'=='@{Document Type}[2]'    
    ...               Run Keywords             
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Select_User_Approve} 
    ...    AND        Click Element    ${Locator_Select_User_Approve}
    ...    AND        Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    //*[text()='${User_Appove}']      
    ...    AND        Click Element    //*[text()='${User_Appove}']    
    ...    AND        Click Element    ${Locator_select_right}      
    ...    AND        Click Element    ${Locator_Button_approve_OK}  
    ...    AND        Unselect Frame
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Button_save} 
    ...    AND        Click Element    ${Locator_Button_save}
    ...    AND        Alert Should Be Present    ${Alert_Present_save_approve}    
    ...    AND        Unselect Frame   
    Run Keyword If     '${Document_data}'=='@{Document Type}[3]' or '${Document_data}'=='@{Document Type}[6]' or '${Document_data}'=='@{Document Type}[6]'    
    ...               Run Keywords             
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Button_save} 
    ...    AND        Click Element    ${Locator_Button_save}
    ...    AND        Alert Should Be Present    ${Alert_Present_save_approve}    
    ...    AND        Unselect Frame   
    Run Keyword If    '${Document_data}'=='@{Document Type}[4]'
    ...               Run Keywords  
    ...               Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Select_User_Approve} 
    ...    AND        Click Element    ${Locator_Select_User_Approve}
    ...    AND        Select Frame     ${Locator_Frame_simpleIframe}
    ...    AND        Wait Until Element Is Visible    //*[text()='${User_Appove}'] 
    ...    AND        Click Element    //*[text()='${User_Appove}']        
    ...    AND        Click Element    ${Locator_Button_approve_OK}     
    ...    AND        Unselect Frame
    ...    AND        Select Frame     ${Locator_Frame_Body}
    ...    AND        Wait Until Element Is Visible    ${Locator_Button_save} 
    ...    AND        Click Element    ${Locator_Button_save}
    ...    AND        Alert Should Be Present    ${Alert_Present_save_approve}    
    ...    AND        Unselect Frame   