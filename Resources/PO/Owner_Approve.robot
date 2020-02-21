***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot

***Keywords***
Owner Approve Transection stock
    #[Arguments]       ${Sub_Document_ID}
    Select Frame      ${Locator_Frame_Body}
    Wait Until Element Is Visible    ${Locator_Waiting_approve}
    Click Element     ${Locator_Waiting_approve}
    Click Element     //*[text()='T0220-0002017-01']
    Wait Until Element Is Visible    ${Locator_Button_approve}
    Execute JavaScript    window.scrollTo(0,2000)
    Click Element     ${Locator_Button_approve}
    Alert Should Be Present    ${Alert_Present_Approvesubmit}    
    Wait Until Element Is Visible     ${Locator_Button_Save_approve}
    Click Element      ${Locator_Button_Save_approve}
    Alert Should Be Present    ${Alert_Present_save_approve}   
    Unselect Frame
   