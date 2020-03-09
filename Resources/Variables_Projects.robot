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
${Locator_Image_File}             ..${/}..${/}DataInput${/}Image${/}ImageUPload.png
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
${Locator_Remark}                  id=remark
${Locator_Memo_ID}                 id=memoNo
${Locator_attachFile}              name=attachFile
${Locator_Main_document_ID}        name=mainDocIdFlag
${Locator_company_Owner_Search}    id=companyOwnerSearch
${Locator_companyOwnerText}        id=companyOwnerTextSpan
${Locator_mainDocIdFlag}           mainDocIdFlag
${Locator_companyAdminCode}        id=companyAdminCode
${Locator_borrowType}              borrowType
#################Company owner Search##############
${Locator_companyCode}             id=companyCode
${Locator_companysearch_button}    id=search
${Locator_company_select}          //*[@id="searchCompanyTb_row1"]/td/a

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
${Locator_Location_From}           id=locationTypeIdFrom
${Locator_Location_To}             id=locationTypeIdTo
${Locator_Location_search_Form}    id=searchFrom
${Locator_Location_search_To}      id=searchTo
#################Search Location##############
${Locator_Region}                  id=region
${Locator_MC zone}                 id=mcZone
${Locator_Province}                id=province
${Locator_search_Location}         id=btn_search
@{Locator_Site_Code}               //*[@id="searchLocationTb_row1"]/td[6]/a
...                                //*[@id="searchLocationTb_row2"]/td[6]/a
...                                //*[@id="searchLocationTb_row3"]/td[6]/a 
...                                //*[@id="searchLocationTb_row10"]/td[7] /a    
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
${Locator_Add_Article}             id=addArticle
${Locator_articleGroup}            id=articleGroup
${Locator_search_article}          id=search
${Locator_article_Select}          //*[@id="searchArticleMoveTb_row1"]/td/div/input 
${Locator_btnOk}                   id=btnOk 
${Locator_Update}                  //*[contains(@class,'actCls')]/div/img[1]
${Locator_addReqQty}               id=addReqQty
${Locator_addEditQty}              id=addEditQty
${Locator_ReqQty_Select}           //*[@id="searchSerialNoInfoTb_row1"]/td/div/input
${Locator_Battery_Select}          //*[@id="searchBatteryInfoTb_row1"]/td/div/input
${Locator_EditAsset_Select}        //*[@id="searchArticleEditAssetTb_row1"]/td/div/input
${Locator_Button_Battery_Select}    id=select
${Locator_reqQty}                  id=reqQty
${Locator_Select_reqQty}           //*[@id="searchFIFOInfoTb_row1"]/td/div/input 
${Locator_Select_Write}            //*[@id="searchFIFOInfoWriteOffTb_row1"]/td/div/input 
${Locator_Select_Return}            //*[@id="searchFIFOInfoReturnTb_row1"]/td/div/input 
${Locator_Nextbtn_Article}         id=nextBtn
${Locator_Save_Article}            id=saveBtn
${Locator_Select_selCol}           id=selCol
${Locator_quantity}                id=quantity
${Locator_saveDetail}              id=saveDetail
${Locator_newValueText}            id=newValueText
${Locator_articleSub_Select}       //*[@id="searchArticleToImportTb_row1"]/td/div/input 
#################Update Battery Infomation Tab##############
${Locator_Button_Battery_Update}    //*[@id="itemTb"]/tbody/tr/td[3]/div/img
${Locator_Out_Of_Warranty}          id=outOfWarranty
${Locator_installationDate}         id=installationDate
${Locator_Date_Today}               //*[contains(@class,'ui-datepicker-days-cell ui-datepicker-today')]
${Locator_Battery_Type}             id=batteryType
${Locator_Batteryremark}            id=remark
${Locator_batterySave}              id=batterySave
${Locator_Battery_saveDetail}       id=saveDetail
${Locator_Battery_Next}             id=next


#################Duplicated Serial No Detail Tab##############
${Locator_notduplicate_serialNo}      //*[@id="msg_warn"]
${Locator_Button_Next_Duplicated}     id=next

#################Material Information Tab##############
${Locator_Button_Next_Material}       id=next

#################Pending Cost Information##############
${Locator_Button_Next_PendingCost}    id=nextBtn

#################Cost Information Tab##############
${Locator_Button_Next_Cost}           id=next


#################Summary Information Tab##############
${Locator_Button_Save&Summit}         id=saveSubmit
${Locator_Button_btSaveSubmit}        id=btSaveSubmit

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
${Locator_Waiting_approve_GR}          //*[@id="treeDate"]/li[2]/ul/li[2]/ul/li[3]/span/a
${Locator_Waiting_approve_Move}        //*[@id="treeDate"]/li[2]/ul/li[1]/ul/li[1]/span/a
${Locator_Waiting_approve_Edit}        //*[@id="treeDate"]/li[2]/ul/li[2]/ul/li/span/a 
${Locator_Waiting_approve_Cut}         //*[@id="treeDate"]/li[2]/ul/li[2]/ul/li[3]/span/a                      
${Locator_Select_approve}              //*[text()='T0220-0002923-01']  
${Locator_Button_approve}              id=approveBtn
${Locator_Button_Save_approve}         id=save
${Locator_Button_Confirm}              id=writeOffBtn

#################Article Master >> Create##############
${Locator_Article}                    //*[@id="main2"]/a[1]/span
${Locator_Article_Number}             id=articleNo
${Locator_Article_Description}        id=articleDesc
${Locator_Main_Group}                 id=mainGroup
${Locator_Sub_Group}                  id=subGroup
${Locator_Brand}                      id=brand
${Locator_Unit_Count}                 id=unitCount
${Locator_Type}                       id=type
${Locator_Require_Serial_No}          id=requireSrNo
${Locator_Require_Maintenance}        id=requireMa
${Locator_Require_Image}              id=requireImage
${Locator_Require_Owner_Name}         id=requireOwner
${Locator_Require_Spare_part}         id=sparePart
${Locator_Require_Battery_Information}    id=requireBatt
${Locator_Require_Frequency_License}      id=requireFreq
${Locator_Image_button}               id=attachFile
${Locator_Image}                      //*[@id="DV001"]/table/tbody/tr[16]/td[2]/div/input    
${Locator_add_new_record}             id=btn_add_new_record
${Locator_save_and_submit}            id=btn_save_and_submit
${Locator_Document_ID}                //*[contains(@class,'tbAam')]/tbody/tr[3]/td[2]
${Locator_Article_Next}               id=toDoList
${Locator_Article_save}               id=save


#################Owner Appove Article##############
${Locator_approve_Article}             //*[@id="treeDate"]/li[2]/ul/li[1]/ul/li/span/a                            
${Locator_Button_approve_Article}      id=btnApprove
${Locator_Button_Save_approve_Article}    id=save