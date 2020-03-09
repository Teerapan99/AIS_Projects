***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot

***Keywords***
Owner Approve Transection stock GR
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_GR}
    Click Element     ${Locator_Waiting_approve_GR} 
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame
Owner Approve Transection stock Supplier
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_GR}
    Click Element     ${Locator_Waiting_approve_GR} 
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame
Owner Approve Transection stock Move
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_Move} 
    Click Element     ${Locator_Waiting_approve_Move}  
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame
Owner Approve Transection stock Edit
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_Edit}
    Click Element     ${Locator_Waiting_approve_Edit}  
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame
Owner Approve Transection stock concessionaire 
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_Edit} 
    Click Element     ${Locator_Waiting_approve_Edit} 
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}  
Owner Approve Transection stock Write off
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve_Cut} 
    Click Element     ${Locator_Waiting_approve_Cut}   
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame

Owner Approve Article
    [Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible      ${Locator_approve_Article} 
    Click Element     ${Locator_approve_Article} 
    Click Element     //*[text()='${Sub_Document_ID}']
    Wait Until Element Is Visible    ${Locator_Button_approve_Article}
    Click Element     ${Locator_Button_approve_Article}
    Alert Should Be Present     ${Alert_approve_Article}  
    Wait Until Element Is Visible    ${Locator_Button_Save_approve_Article} 
    Click Element     ${Locator_Button_Save_approve_Article} 
    Alert Should Be Present     ${Alert_Present_save_approve}
    Unselect Frame