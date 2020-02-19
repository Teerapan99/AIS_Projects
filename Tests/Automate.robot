***Settings***
Resource             ../Resources/Business_Projects.robot
Resource             ../Resources/Common.robot
Suite Setup          Open Web AMM
Suite Teardown       Close AMM Web
***Test Cases***
TC1:login to AIS Group Asset Management
    [Tags]    Login
    Business_Projects.login to AIS Group Asset Management
    Business_Projects.Create Transection stock



