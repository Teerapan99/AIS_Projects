***Settings***
Library                  SeleniumLibrary
***Variables***
${base_url}              https://10.208.152.171/AAM/direct.jsp  
${base_browser}          ff
#################Local Locator##############
${Locator_Next_Button}             id=btn_next
${Locator_Frame_Header}            name=fHead
${Locator_Frame_Body}              name=fBody
${Locator_Frame_simpleIframe}      id=simpleIframe
#################Log in##############
${Locator_User}           name=pin
${Locator_Button_OK}      //*[@value="OK"]

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
