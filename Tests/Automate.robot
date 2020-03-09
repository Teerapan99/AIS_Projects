***Settings***
Resource             ../Resources/Business_Projects.robot

***Test Cases***
# SC1:Create Transection stock Non GR on AIS Group Asset Management
#     [Tags]    SC1     stock  
#     Set Selenium Speed   0.1
#     Business_Projects.Create Transection stock Non GR 
# SC2:Get&Verify Data Owner Approve Transection stock Non GR IN Database AAM 
#     [Tags]    SC2    stock
#     Business_Projects.Get Data Owner Approve IN Database AAM     ตรวจรับทรัพย์สินใหม่แบบ Term Non GR
# SC3:Owner Approve Transection stock Non GR on AIS Group Asset Management
#     [Tags]    SC3   stock 
#     # Set Selenium Speed   0.2
#     Business_Projects.Owner Approve Transection stock Non GR
SC4:Create Transection stock GR on AIS Group Asset Management
    [Tags]    SC4     stock  
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock GR 
SC5:Get&Verify Data Owner Approve Transection stock GR IN Database AAM 
    [Tags]    SC5    stock
    Business_Projects.Get Data Owner Approve IN Database AAM     ตรวจรับทรัพย์สินใหม่แบบ Term GR
SC6:Owner Approve Transection stock GR on AIS Group Asset Management
    [Tags]    SC6   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock GR
SC7:Create Transection stock Supplier on AIS Group Asset Management
    [Tags]    SC7   stock 
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock Supplier
SC8:Get&Verify Data Owner Approve Transection stock Supplier IN Database AAM 
    [Tags]    SC8    stock
    Business_Projects.Get Data Owner Approve IN Database AAM    ยืมทรัพย์สินจาก Supplier 
SC9:Owner Approve Transection stock Supplier on AIS Group Asset Management
    [Tags]    SC9   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock Supplier
SC10:Create Transection stock Move on AIS Group Asset Management
    [Tags]    SC10   stock 
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock Move
SC11:Get&Verify Data Owner Approve Transection stock Move IN Database AAM 
    [Tags]    SC11    stock
    Business_Projects.Get Data Owner Approve IN Database AAM     ย้ายทรัพย์สิน
SC12:Owner Approve Transection stock Move on AIS Group Asset Management
    [Tags]    SC12   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock Move
SC13:Create Transection stock Write off on AIS Group Asset Management
    [Tags]    SC13   stock 
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock Write off
SC14:Get&Verify Data Owner Approve Transection stock Write off IN Database AAM 
    [Tags]    SC14    stock
    Business_Projects.Get Data Owner Approve IN Database AAM     ตัดจำหน่ายทะเบียนทรัพย์สินที่ไม่ส่งมอบ 
SC15:Owner Approve Transection stock Write off on AIS Group Asset Management
    [Tags]    SC15   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock Write off
SC16:Create Transection stock concessionaire on AIS Group Asset Management
    [Tags]    SC16   stock 
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock concessionaire
SC17:Get&Verify Data Owner Approve Transection stock concessionaire IN Database AAM 
    [Tags]    SC17    stock
    Business_Projects.Get Data Owner App rove IN Database AAM     ส่งคืนทรัพย์สินให้ผู้ให้สัมปทาน 
SC18:Owner Approve Transection stock concessionaire on AIS Group Asset Management
    [Tags]    SC18   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock concessionaire
SC19:Create Transection stock Edit on AIS Group Asset Management
    [Tags]    SC19   stock 
    Set Selenium Speed   0.1
    Business_Projects.Create Transection stock Edit
SC20:Get&Verify Data Owner Approve Transection stock Edit IN Database AAM 
    [Tags]    SC20    stock
    Business_Projects.Get Data Owner Approve IN Database AAM     ขอแก้ไขข้อมูลทรัพย์สิน 
SC21:Owner Approve Transection stock Edit on AIS Group Asset Management
    [Tags]    SC21   stock 
    # Set Selenium Speed   0.2
    Business_Projects.Owner Approve Transection stock Edit
SC22:Create Article Master Key In
    [Tags]    SC22   Article
    Set Selenium Speed   0.2
    Business_Projects.Create Article Master Key In
SC23:Get&Verify Data Owner Approve IN Database AAM 
    [Tags]    SC23    Article
    Business_Projects.Get Data Owner Approve Article IN Database AAM   
SC24:Owner Approve Article on AIS Group Asset Management
    [Tags]   SC24    Article
    Business_Projects.Owner Approve Article