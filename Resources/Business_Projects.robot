***Settings***
Resource           ./PO/Document_Menu.robot
Resource           ./PO/Owner_Approve.robot
Resource           ./PO/DB_AAM.robot
Resource           ./PO/Excel_Data.robot
Resource           ./PO/CSV_Data.robot
Resource           ./PO/Article.robot
Resource           Common.robot
Resource           Variables_Projects.robot


***Keywords***
Create Transection stock GR
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[1]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[1]    @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[1]    @{Location_type}[0]    @{Region}[0]   
    Document_Menu.Select Data & Verify PO Item Information Tab
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[1]
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab    @{Document Type}[1]
    Document_Menu.Select Data & Verify Material Information Tab
    Document_Menu.Select Data & Verify Cost Information Tab
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[1]
    Document_Menu.Select Data & Verify Generate Document Tab       @{Document Type}[1]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[1]    @{User_approve}[1]
    Common.Close AAM Web
Create Transection stock Supplier
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[2]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[2]    @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[2]    @{Location_type}[0]    @{Region}[0]    
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[2]
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[2]
    Document_Menu.Select Data & Verify Generate Document Tab       @{Document Type}[2]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[2]    @{User_approve}[1]  
    Common.Close AAM Web
Create Transection stock Move
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[3]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[3]    @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[3]    @{Location_type}[0]    @{Region}[0]    
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[3]
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab    @{Document Type}[3]
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[3]
    Document_Menu.Select Data & Verify Generate Document Tab        @{Document Type}[3]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[3]    @{User_approve}[1]  
    Common.Close AAM Web
Create Transection stock Write off
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[4]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[4]    @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[4]    @{Location_type}[0]    @{Region}[0]    
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[4]
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab    @{Document Type}[4]
    Document_Menu.Select Data & Verify Pending Cost Information    @{Document Type}[4]
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[4]
    Document_Menu.Select Data & Verify Generate Document Tab       @{Document Type}[4]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[4]    @{User_approve}[1]  
    Common.Close AAM Web
Create Transection stock concessionaire
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[5]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[5]      @{Service group}[4]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[5]    @{Location_type}[1]    @{Region}[0]    
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[5]
    Document_Menu.Select Data & Verify Duplicated Serial No Detail Tab    @{Document Type}[5]
    Document_Menu.Select Data & Verify Pending Cost Information    @{Document Type}[5]
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[5]
    Document_Menu.Select Data & Verify Generate Document Tab       @{Document Type}[5]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[5]    @{User_approve}[1]  
    Common.Close AAM Web
    
Create Transection stock Edit
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Document_Menu.Click Transection stock
    Document_Menu.Select Data & Verify Document Type Tab           @{Document Type}[6]
    Document_Menu.Select Data & Verify General Information Tab     @{Document Type}[6]    @{Business Group}[1]
    Document_Menu.Select Data & Verify Location Information Tab    @{Document Type}[6]    @{Location_type}[0]    @{Region}[0]    
    Document_Menu.Select Data & Verify Article Information Tab     @{Document Type}[6]
    Document_Menu.Select Data & Verify Software Information
    Document_Menu.Select Data & Verify Summary Information Tab     @{Document Type}[6]
    Document_Menu.Select Data & Verify Generate Document Tab       @{Document Type}[6]
    Document_Menu.Select Data & Verify Select for approve Tab      @{Document Type}[6]    @{User_approve}[1]  
    Common.Close AAM Web
Get Data Owner Approve IN Database AAM
    [Arguments]      ${Document_data}
    DB_AAM.Get&Verify Data Owner Approve IN Database AAM     ${Document_data}     

Owner Approve Transection stock GR
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[1]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[1]   
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock GR     ${Sub_Document_ID}
    Common.Close AAM Web
Owner Approve Transection stock Supplier
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[2]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[2]        
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock Supplier    ${Sub_Document_ID}
    Common.Close AAM Web

Owner Approve Transection stock Move
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[3]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[3]      
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock Move     ${Sub_Document_ID}
    Common.Close AAM Web
Owner Approve Transection stock Write off
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[4]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[4]      
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock Write off    ${Sub_Document_ID}
    Common.Close AAM Web
Owner Approve Transection stock concessionaire
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[5]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[5]      
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock concessionaire    ${Sub_Document_ID}
    Common.Close AAM Web

Owner Approve Transection stock Edit
    CSV_Data.Get Data From CSV Sub Document ID          @{Document Type}[6]  
    CSV_Data.Get Data From CSV Owner Approve            @{Document Type}[6]     
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Transection stock Edit    ${Sub_Document_ID}
    Common.Close AAM Web
Create Article Master Key In
    Common.Open Web AAM    @{Uasr}[0]
    Document_Menu.Mouse Over Menu Document
    Article.Click Sub Menu Article
    Article.Create Article Master
    Article.Document Description      Article
    Article.Article save  
    Common.Close AAM Web

Get Data Owner Approve Article IN Database AAM
    DB_AAM.Get&Verify Data Owner Approve Article IN Database AAM    Article

Owner Approve Article
    CSV_Data.Get Data From CSV Sub Document ID    Article   
    CSV_Data.Get Data From CSV Owner Approve      Article     
    Common.Open Web AAM    ${Owner_Approve} 
    Owner_Approve.Owner Approve Article     ${Sub_Document_ID}
    Common.Close AAM Web