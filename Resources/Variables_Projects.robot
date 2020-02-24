***Settings***
Library                           SeleniumLibrary
Library                           DateTime
Library                           String
Library                           DatabaseLibrary
Library                           OperatingSystem
Library                           openpyxl
***Variables***
${base_url}                       https://10.208.152.171/AAM/direct.jsp  
${base_browser}                   ff
#################Database Connect##############
${DBName}                         AACMTST
${DBUser}                         aam
${DBPass}                         aam
${DBHost}                         10.208.152.170
${DBPort}                         1521
${DBService}                      aacmtst

#################Local Locator##############
${Locator_Next_Button}            id=btn_next
${Locator_Frame_Header}           name=fHead
${Locator_Frame_Body}             name=fBody
${Locator_Frame_simpleIframe}     id=simpleIframe
#################Log in##############
${Locator_User}                    name=pin
${Locator_Button_OK_Login}         //*[@value="OK"]

#################Document Menu##############
${Locator_Document}                //*[@id="menuContain"]/ul[1]/li[2]/a/span
${Locator_Transectionstock}        //*[@id="main2"]/a[2]/span
#################Document Type Tab##############
${Locator_Document_type}           id=docType
${Locator_Next}                    id=next
#################General Information Tab##############
${Locator_Business_Group}          id=businessGroup
${Locator_Company_owner}           id=companyOwner
${Locator_Service_group}           id=serviceGroupId
${Locator_Project_Button}          id=projectSearch
${Locator_Project_Text}            id=projectNameText
${Locator_Transfer_to_regulator}   id=transferred_NT
${Locator_Title}                   id=title
${Locator_Main_document_ID}        name=mainDocIdFlag
#################Search Condition##############
${Locator_Business_Group}          //*[contains(@class, 'businessGroupCls')]
${Locator_Service_group}           id=serviceGroup
${Locator_PONO}                    id=poNo
${Locator_search_Button}           id=search
${Locator_Select_Project}          //*[@id="searchProjectTb_row1"]/td[4]/a
#################Location Information TAb##############
${Locator_Specify_Location}        id=locationFlag_Y
${Locator_Location_type}           id=locationTypeId
${Locator_Location_search}         id=search
#################Search Location##############
${Locator_Region}                  id=region
${Locator_MC zone}                 id=mcZone
${Locator_Province}                id=province
${Locator_search_Location}         id=btn_search
@{Locator_Site_Code}               //*[@id="searchLocationTb_row1"]/td[6]/a
...                                //*[@id="searchLocationTb_row2"]/td[6]/a
...                                //*[@id="searchLocationTb_row3"]/td[6]/a      
#################PO Item Information Tab##############
${Locator_Select_PONO}             id=addPoNo
${Locator_PONO}                    id=poNo
${Locator_search_Location}         id=btn_search
@{Locator_Select_PO}               //*[@id="searchPoTb_row1"]/td[1]/div
...                                //*[@id="searchPoTb_row2"]/td[1]/div
...                                //*[@id="searchPoTb_row3"]/td[1]/div
${Locator_Button_OK_PO}            id=ok
${Locator_Button_Next_POItem}      id=next
${Locator_Image_Edit}              //*[@id="tablePo"]/tbody/tr/td[2]/div/img[1]
${Locator_Receive_quantity}        id=receiveQty
${Locator_saveDetail}              id=saveDetail
#################Article Information Tab##############
${Locator_Image_add}               //*[@id="tableArticle"]/tbody/tr/td[2]/div/img[3]
${Locator_Outofwarranty}           id=outOfWarranty
${Locator_datepicker}              //*[contains(@class, 'ui-datepicker-days-cell ui-datepicker-today')]
${Locator_serialNo}                id=serialNo
${Locator_Button_operAdd}          id=operAdd
${Locator_Button_operOk}           id=operOk
${Locator_Button_Next_Article}     id=next

#################Duplicated Serial No Detail Tab##############
${Locator_notduplicate_serialNo}      //*[@id="msg_warn"]
${Locator_Button_Next_Duplicated}     id=next

#################Material Information Tab##############
${Locator_Button_Next_Material}       id=next

#################Cost Information Tab##############
${Locator_Button_Next_Cost}           id=next


#################Summary Information Tab##############
${Locator_Button_Save&Summit}         id=saveSubmit

#################Generate Document Tab##############
${Locator_Document_Type}              //*[contains(@class,'tabBox')]/div[2]/table/tbody/tr[3]/td[2]/span
${Locator_Main_Document_ID}           //*[contains(@class,'tabBox')]/div[2]/table/tbody/tr[4]/td[2]/span          
${Locator_Sub_Document_ID}            //*[contains(@class,'tabBox')]/div[2]/table/tbody/tr[5]/td[2]/span    
${Locator_Status}                     //*[contains(@class,'tabBox')]/div[2]/table/tbody/tr[6]/td[2]/span     
${Locator_Button_Generate}            id=okBtn

#################Select for approve Tab##############
${Locator_Select_User_Approve}        //*[@id="tbReplace"]/tbody/tr/td[4]/span/button
${Locator_select_right}               id=right
${Locator_Button_approve_OK}          id=ok
${Locator_Button_save}                id=save

#################Owner Appove Transection stock##############
${Locator_Waiting_approve}             //*[@id="treeDate"]/li[2]/ul/li[2]/ul/li[3]/span/a 
${Locator_Select_approve}              //*[text()='T0220-0002923-01']  
${Locator_Button_approve}              id=approveBtn
${Locator_Button_Save_approve}         id=save





