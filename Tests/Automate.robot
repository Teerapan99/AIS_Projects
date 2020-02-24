***Settings***
Resource             ../Resources/Business_Projects.robot

***Test Cases***
SC1:Create Transection stock on AIS Group Asset Management
    [Tags]    Create   
    # Set Selenium Speed   0.2
    Business_Projects.Create Transection stock 
SC2:Get&Verify Data Owner Approve IN Database AAM 
    [Tags]    DB
    Business_Projects.Get Data Owner Approve IN Database AAM 

SC3:Owner Approve Transection stock on AIS Group Asset Management
    [Tags]    Approve 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock


