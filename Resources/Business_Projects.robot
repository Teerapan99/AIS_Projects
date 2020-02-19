***Settings***
Resource           ./PO/Login.robot   
Resource           ./PO/Document_Menu.robot
***Keywords***
login to AIS Group Asset Management
    Login.Login To AMM

Create Transection stock
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab
    Document_Menu.Select Data & Verify General Information Tab
    Document_Menu.Select Data & Verify Location Information Tab