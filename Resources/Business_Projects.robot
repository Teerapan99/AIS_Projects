***Settings***
Resource           ./PO/Document_Menu.robot
Resource           ./PO/Owner_Approve.robot
Resource           Common.robot
***Keywords***
Create Transection stock And Approve
    Common.Open Web AMM    00031242
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab    ตรวจรับทรัพย์สินใหม่แบบ Term GR
    Document_Menu.Select Data & Verify General Information Tab     NON FBB
    Document_Menu.Select Data & Verify Location Information Tab    Location    Bangkok
    Document_Menu.Select Data & Verify PO Item Information Tab
    Document_Menu.Select Data & Verify Article Information Tab
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab
    Document_Menu.Select Data & Verify Material Information Tab
    Document_Menu.Select Select Data & Verify Cost Information Tab
    Document_Menu.Select Data & Verify Summary Information Tab
    Document_Menu.Select Data & Verify Generate Document Tab
    Document_Menu.Select Select Data & Verify Select for approve Tab 
    Common.Close AMM Web
    
    #Owner Appove
    # Common.Open Web AMM     00032211 
    # Owner_Approve.Owner Approve Transection stock
    # Common.Close AMM Web