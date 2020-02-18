***Settings***
Resource          Variables_Projects.robot
Resource          ../DataInput/Data.robot


***Keywords***
Open Web AMM
    Open Browser    ${base_url}     ${base_browser}    options=add_argument("--ignore-certificate-errors") 
    Maximize Browser Window   
Close AMM Web
    Close Browser