*** Settings ******
Library    AppiumLibrary
Library    MyLibrary
resource    ../Variables/Locator.robot
Resource    ../BaseKeywords/BaseKeywords.robot

***Keywords**
Login Via Email
    [Arguments]     ${userEmail}     ${userPWD}
    [Documentation]     User select Email as login method
    Log to console      Start ---> login via Email
    Click Element   ${LOGIN_EMAIL} 
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
    Wait Until Element Is Visible   ${Search_Inputbox}    
    Log to console      Finish ---> move to Dockbar

Search Item From Search_Inputbox
    [Documentation]  User search something from search box, input items and click search button
    [Arguments]     ${Search_Item}
    Log to console      start ---> Searching Items
    Wait Until Element Is Visible    ${Search_Inputbox}
    Click Element   ${Search_Inputbox}

    Input Text      ${Search_Inputbox}      ${Search_Item}
    Wait Until Element Is Visible   ${Search_Button}    20
    Click Element   ${Search_Button}
    sleep   3
    Log to console      Finish ---> Searching Items

Submit Profile
    Click Element    ${Profile_Save_Button} 
    sleep   2
    Log    Setting over

Input User Name
    Wait Until Element Is Visible    ${Profile_Username_Inputbox}    20
    Click Element    ${Profile_Username_Inputbox} 
    Clear Text    ${Profile_Username_Inputbox}
    Sleep    1
    Input Text    ${Profile_Username_Inputbox}    ${Profile_Username_Context}
    Sleep    2

Select Professional  
    #[Arguments]     ${professional}
    #${prof}     Rep
    Click Element   ${Profession_Button}
    Swipe Professtional To Bottom
    Sleep   2
    Click Element   ${Engineer_Text}

Select Gender    
    Tap     ${Gender_SelectBox}   
    #Swipe Gender Up to Down According To Window Size  
    Click Element  ${Gender_Confirm_Button}    
    sleep   2

Select Birthday
    Tap     ${Birth_Setting_Area}  
    sleep   1
    Swipe Calender By Left Button
    #Select Year And Select Date
    Click Element    ${Birth_OK_Button} 
    sleep   2

Select Hometown
    Click Element    ${Profile_Hometown_Selectbox} 
    Sleep    1
    Click Element    ${Profile_Hometown_Confirm_Button}
    Sleep    1

Input Profile Introduction
    Click Element    ${Profile_Intro_Inputbox} 
    Sleep    1 
    Clear Text     ${Profile_Intro_Inputbox} 
    Sleep    1
    Input Text     ${Profile_Intro_Inputbox}     ${Profile_Intro_Context}     
    Sleep    1
    Hide Keyboard  

Move To Edit Profile
    Click Element   ${MINE_TabButton}  
    Wait Until Element Is Visible    ${Personal_Profile_Text}
    Click Element   ${Personal_Profile_Text}
    Wait Until Element Is Visible   ${EditProfile_Title} 
    Click Element   ${Profile_Edit_Button}

Close Profile Setting Page
    Click Element   ${Profile_Close_Button}
    sleep   2
    