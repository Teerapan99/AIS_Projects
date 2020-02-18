***Settings***
Resource          Variables_Projects.robot
Resource          ../DataInput/Data.robot


***Keywords***
Open Web AMM
    Open Browser    ${base_url}     ${base_browser}    options=add_argument("--ignore-certificate-errors") 
    Maximize Browser Window
Login To AMM
    input text      ${Locator_User}     @{Uasr}[0] 
    Click Button    ${Locator_Button_OK}    
Close AMM Web
    Close Browser