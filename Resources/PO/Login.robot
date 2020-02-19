***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot


***Keywords***
Login To AMM
    input text      ${Locator_User}     @{Uasr}[1] 
    Click Button    ${Locator_Button_OK} 