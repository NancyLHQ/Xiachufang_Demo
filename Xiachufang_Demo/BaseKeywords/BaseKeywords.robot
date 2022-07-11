*** Settings ******

Resource    ../Settings/Settings.robot
***Keywords***
Launch App
    [Documentation]     Launch APP
    Log    ......Start executing USER LOGIN

    Open Application    ${AppiumServer}     platformName=${platformName}  platformVersion=${platformVersion}    deviceName=${deviceName}    
...    app=${App}    appPackage=${appPackage}    udid=${udid} 

    sleep   3
    Log     ******** Launching xiachufang ing **********


    ${AGREE_Status}    Run Keyword And Return Status    Element Should Be Visible    ${LAUNCH_APP_AGREE}
    Run Keyword If    ${AGREE_Status}    Click Element   ${LAUNCH_APP_AGREE}
    Sleep    12
    ${Update_status}    Run Keyword And Return Status    Element Should Be Visible    ${Update_Next_Button}
    Run Keyword If    ${Update_status}    Wait Until Keyword Succeeds    20    2    Click Element   ${Update_Next_Button}  
     
    Wait Until Page Contains Element   ${MINE_TabButton}  
    
    Log    mine button is visable!
    Wait Until Element Is Visible  ${MINE_TabButton} 
    Click Element   ${MINE_TabButton} 
    Log         Clicking Mine button
    Click Element   ${FORCE_AGREE} 
    Log    Clicking agree Contracts button

Click By ID
    [Arguments]     ${Element_ID}
    Wait Until Element Is Visible   ${Element_ID}
    Click Element     ${Element_ID}
    Log     Click element by ID : Done


Swipe Calender Left to Right According To Window Size
    [Documentation]     User swipe Calender from left to right side     
    ${Window_Width}     Get Window Width    
    ${Window_Height}    Get Window Height
    ${Window_Width_Start}     evaluate    ${Window_Width}*0.7
    ${Window_Width_End}       evaluate    ${Window_Width}*0.2
    ${Window_Height_Start}     evaluate    ${Window_Width}*0.5
    ${Window_Height_End}     evaluate    ${Window_Width}*0.5
   
    Click Element   android:id/day_picker_view_pager

    Swipe      ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   500

Swipe Calender By Left Button   
    Wait Until Page Contains Element    ${Pre_Calander_Button} 
    Log    swiped calender!
    ${Target_Get_Status}    Set Variable   False
    WHILE   ${Target_Get_Status} != True
        Click Element   ${Pre_Calander_Button} 
        Sleep   1
        ${Target_Get_Status}    Run Keyword And Return Status   Element Should Be Visible   ${Birthday_Calender}  
        Run Keyword If  ${Target_Get_Status}    Click Element   ${Birthday_Calender}       
    END  
    Click Element   ${Birthday_Calender}  
    Log    find the target birthday!

Select Year And Select Date
    ${Window_Width}     Get Window Width    
    ${Window_Height}    Get Window Height
    ${Window_Width_Start}     evaluate    ${Window_Width}*0.5
    ${Window_Width_End}       evaluate    ${Window_Width}*0.5
    ${Window_Height_Start}     evaluate    ${Window_Width}*0.5
    ${Window_Height_End}     evaluate    ${Window_Width}*0.7
    
    Wait Until Page Contains Element    ${Select_Year_Button}
    Click Element    ${Select_Year_Button} 
    Log    click select year button

    
    # ${Target_Year_Status}    Set Variable   False
    # Log    status variable set!
    # WHILE   ${Target_Year_Status} != True
    #     #Tap    ${Target_Year_ScrollArea}
    #     Log    tapped scrollable area
    #     Log    Start to swipe!!
    #     Swipe    ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   2000
    #     Sleep   1
    #     Log    Swiped Once!
    #     ${Target_Year_Status}    Run Keyword And Return Status   Element Should Be Visible   ${Target_Year_button}  
    #     Sleep    2
    #     Run Keysword If  ${Target_Year_Status}    Click Element   ${Target_Year_button}       
    # END  
    Scroll Up    ${Target_Year_ScrollArea}  #${Target_Year_button}

    ${TargetDate_Get_Status}    Set Variable   False
    WHILE   ${TargetDate_Get_Status} != True
        Wait Until Page Contains Element    ${Pre_Calander_Button}
        Wait Until Keyword Succeeds    20    2    Click Element   ${Pre_Calander_Button} 
        
        ${Target_Get_Status}    Run Keyword And Return Status   Element Should Be Visible   ${Birthday_Calender}  
        Run Keyword If  ${Target_Get_Status}    Click Element   ${Birthday_Calender}       
    END  
    Click Element   ${Birthday_Calender}  
    Log    find the target birthday!

Swipe Gender Up to Down According To Window Size
    ${Window_Width}     Get Window Width    
    ${Window_Height}    Get Window Height
    ${Window_Width_Start}     evaluate    ${Window_Width}*0.5
    ${Window_Width_End}       evaluate    ${Window_Width}*0.5
    ${Window_Height_Start}     evaluate    ${Window_Width}*0.53
    ${Window_Height_End}     evaluate    ${Window_Width}*0.46
    #Swipe    ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   1000
    #Wait Until Element Is Visible    ${Gender_Scroll}
    Wait Until Page Contains Element    ${Gender_Scroll}
    #Scroll Down     ${Gender_Scroll}
                
    Log     Swiped Gender selection!


 
Swipe Professtional To Bottom
    ${Window_Width}     Get Window Width    
    ${Window_Height}    Get Window Height
    ${Window_Width_Start}     evaluate    ${Window_Width}*0.5
    ${Window_Width_End}       evaluate    ${Window_Width}*0.5
    ${Window_Height_Start}     evaluate    ${Window_Width}*0.8
    ${Window_Height_End}     evaluate    ${Window_Width}*0.4

    Swipe     ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   1000   
    Log     Scrolled!   





