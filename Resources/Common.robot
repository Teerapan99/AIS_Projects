***Settings***
Resource          Variables_Projects.robot
Resource          ./PO/Login.robot 

***Keywords***
Open Web AMM
    [Arguments]    ${Password}
    Open Browser    ${base_url}     ${base_browser}    options=add_argument("--ignore-certificate-errors") 
    Maximize Browser Window  
    Login To AMM    ${Password} 
Close AMM Web
    Close Browser