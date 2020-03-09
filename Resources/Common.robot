***Settings***
Resource          Variables_Projects.robot
Resource          ./PO/Login.robot 

***Keywords***
Open Web AAM
    [Arguments]    ${Password}
    Open Browser    ${base_url}     ${base_browser}    options=add_argument("--ignore-certificate-errors")    
    Maximize Browser Window  
    Login To AAM    ${Password} 
Close AAM Web
    Close Browser