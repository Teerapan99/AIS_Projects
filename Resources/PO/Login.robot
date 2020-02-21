***Settings***
Resource          ../Variables_Projects.robot
Resource          ../../DataInput/Data.robot
  

***Keywords***
Login To AAM
    [Arguments]     ${Password}
    input text      ${Locator_User}      ${Password}
    Click Button    ${Locator_Button_OK_Login} 
    