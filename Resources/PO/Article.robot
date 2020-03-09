***Settings***
Resource    ../Variables_Projects.robot
Resource    ../../DataInput/Data.robot

***Keywords***   
Click Sub Menu Article
    Wait Until Element Is Visible     ${Locator_Article}   
    Click Element    ${Locator_Article}
    Unselect Frame
Create Article Master  
    Select Frame     ${Locator_Frame_Body}
    ${Random_Number}    Generate Random String   8    [NUMBERS]                 
    Input Text                   ${Locator_Article_Number}         ${Random_Number}          
    Input Text                   ${Locator_Article_Description}    ${Article_Description}      
    Select From List By Label    ${Locator_Main_Group}             ${Main_Group}  
    Sleep    0.5s              
    Select From List By Label    ${Locator_Sub_Group}              ${Sub_Group}                  
    Select From List By Label    ${Locator_Brand}                  ${Brand}                       
    Select From List By Label    ${Locator_Unit_Count}             ${Unit_Count}               
    Select From List By Label    ${Locator_Type}                   ${Type}                      
    Select From List By Label    ${Locator_Require_Serial_No}      ${Require_Serial_No}         
    Select From List By Label    ${Locator_Require_Maintenance}    ${Require_Maintenance}       
    List Selection Should Be     ${Locator_Require_Image}          ${Require_Image}            
    List Selection Should Be     ${Locator_Require_Owner_Name}     ${Require_Owner_Name}       
    List Selection Should Be     ${Locator_Require_Spare_part}     ${Require_Spare_part}         
    Select From List By Label    ${Locator_Require_Battery_Information}     ${Require_Battery_Information}    
    Select From List By Label    ${Locator_Require_Frequency_License}       ${Require_Frequency_License}  
    Choose File                  ${Locator_Image}     ${CURDIR}${/}${Locator_Image_File}             
    Click Button                 ${Locator_add_new_record} 
    Execute JavaScript           window.scrollTo(0,200)          
    Click Button                 ${Locator_save_and_submit}
    Alert Should Be Present      ${Alert_Savesubmit_Article} 
    Wait Until Element Is Visible      ${Locator_Document_ID} 
    Unselect Frame
Document Description  
    [Arguments]       ${Article} 
    Select Frame      ${Locator_Frame_Body}       
    ${Document_ID}    Get Text   ${Locator_Document_ID}               
    Click Button                 ${Locator_Article_Next}
    Set Test Variable            ${Document_ID} 
    Unselect Frame 
    Put Data Sub Document ID To CSV File    ${Article}      ${Document_ID} 
Article save        
    Select Frame     ${Locator_Frame_Body}            
    Click Button                 ${Locator_Article_save} 
    Alert Should Be Present      ${Alert_Present_save_approve}
    Unselect Frame              
    
    