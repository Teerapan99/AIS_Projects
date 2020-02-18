***Settings***
Resource          Variables_Projects.robot
Resource          ../DataInput/Data.robot


***Keywords***
Open Web AMM
    Create Session    AMM    ${base_url}     verify=True
    Open Browser    ${base_url}     ${base_browser}    
    Maximize Browser Window
Login To AMM
    Click Element     ${Locator_htts}
    Click Element     ${Locator_link}
    input text      ${Locator_User}     @{Uasr}[0] 
    Click Button    ${Locator_Button_OK}    
Close AMM Web
    Close Browser