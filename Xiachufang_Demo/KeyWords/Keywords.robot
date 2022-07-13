*** Settings ******

Resource    ../Settings/Settings.robot
***Keywords**
Login Via Email
    [Arguments]     ${userEmail}     ${userPWD}
    [Documentation]     User select Email as login method
    Log to console      Start ---> login via Email
    Wait Until Page Contains Element    ${LOGIN_EMAIL} 
    Wait Until Keyword Succeeds    20    2    Click Element   ${LOGIN_EMAIL} 
    #Log   Clicking login via Email button 

    Wait Until Element Is Visible   ${EMAIL_INPUTBOX} 
    #Log     waiting for Email-input box

    Input Text  ${EMAIL_INPUTBOX}   ${userEmail}
    #Log  Inputing user Email
    

    Input Text  ${PASSWORD_INPUTBOX}    ${userPWD}
    #Log     inputing User PASSWORD
    
    Wait Until Page Contains Element    ${LOGIN_BUTTON}
    Wait Until Keyword Succeeds    20s     2s    Click Element   ${LOGIN_BUTTON}
    #Log     Trying Clicking Login button
    Log to console      Finish ---> log via Email


Close All Apps
    [Documentation]     close all opened applications
    Close All applications
    Log to console      Application all killed
Move To Dockbar
    [Documentation]     Move to the first page
    [Arguments]     ${Dockbar_Menu}
    
    Log to console      Start --->move to Dockbar
    Click Element   ${Dockbar_Menu}
    Log     tapping xiachufang!!!
    Wait Until Page Contains Element   ${Search_Inputbox}    
    Log to console      Finish ---> move to Dockbar

Search Item From Search_Inputbox
    [Documentation]  User search something from search box, input items and click search button
    [Arguments]     ${Search_Item}
    Log to console      start ---> Searching Items
    Wait Until Page Contains Element    ${Search_Inputbox}
    Wait Until Keyword Succeeds    20    2    Click Element   ${Search_Inputbox}
    Wait Until Keyword Succeeds    20    2    Input Text      ${Search_Inputbox}      ${Search_Item}
    Wait Until Element Is Visible   ${Search_Button}    20
    Click Element   ${Search_Button}
    Wait Until Page Contains Element    com.xiachufang:id/swipeRefreshLayout
    Log to console      Finish ---> Searching Items

Submit Profile
    Wait Until Page Contains Element    ${Profile_Save_Button}
    Wait Until Keyword Succeeds    20    2    Click Element    ${Profile_Save_Button}     
    #Wait Until Page Contains    ${Profile_Username_Context}    
    Wait Until Page Contains Element    ${MINE_TabButton}
    Log    Submitted Profile Setting 

Input User Name
    Wait Until Element Is Visible    ${Profile_Username_Inputbox}    20
    Click Element    ${Profile_Username_Inputbox} 
    Clear Text    ${Profile_Username_Inputbox}
    Input Text    ${Profile_Username_Inputbox}    ${Profile_Username_Context}

Select Professional  
    #[Arguments]     ${professional}
    #${prof}     Rep
    Click Element   ${Profession_Button}
    Swipe Professtional To Bottom
    Wait Until Page Contains Element    ${Engineer_Text}
    Click Element   ${Engineer_Text}

Select Gender    
    Wait Until Page Contains Element    ${Gender_SelectBox}
    Tap     ${Gender_SelectBox}   
    #Swipe Gender Up to Down According To Window Size  
    Wait Until Keyword Succeeds    20    2    Click Element  ${Gender_Confirm_Button}    
    

Select Birthday
    Wait Until Page Contains Element    ${Birth_Setting_Area}
    Wait Until Keyword Succeeds    20    2    Tap     ${Birth_Setting_Area}  
    Wait Until Page Contains Element    ${Pre_Calander_Button}
    
    Swipe Calender By Left Button
    #Select Year And Select Date
    Wait Until Keyword Succeeds    20    2    Click Element    ${Birth_OK_Button} 
    

Select Hometown
    Wait Until Page Contains Element    ${Profile_Hometown_Selectbox}
    Wait Until Keyword Succeeds    20    2    Click Element    ${Profile_Hometown_Selectbox}  
    Wait Until Keyword Succeeds    20    2    Click Element    ${Profile_Hometown_Confirm_Button}
    

Input Profile Introduction
    Wait Until Page Contains Element    ${Profile_Intro_Inputbox}
    Wait Until Keyword Succeeds    20    2    Click Element    ${Profile_Intro_Inputbox}        
    Clear Text     ${Profile_Intro_Inputbox}     
    Wait Until Keyword Succeeds    20    2     Input Text     ${Profile_Intro_Inputbox}     ${Profile_Intro_Context}         
    Hide Keyboard  

Move To Edit Profile
    Log to console      Start --->move to Profile Setting
    Click Element   ${MINE_TabButton}  
    Wait Until Element Is Visible    ${Personal_Profile_Text}

    Click Element   ${Personal_Profile_Text}
    #Wait Until Element Is Visible   ${EditProfile_Button} 
    #click Element   ${Profile_Edit_Button}
    Log to console      End --->move to Profile Setting
Close Profile Setting Page
    Wait Until Page Contains Element    ${Profile_Close_Button}
    Wait Until Keyword Succeeds    20    2    Click Element   ${Profile_Close_Button}
    
    