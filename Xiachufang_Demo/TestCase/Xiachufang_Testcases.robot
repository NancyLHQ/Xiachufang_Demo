*** Settings ******

Resource    ../Settings/Settings.robot

Suite Setup     Launch App
Suite Teardown      Close All Apps
Default Tags    Regression    Login    Search    Setting
*** Test Cases ****** 

TC_01_User_Login
    [Documentation]     User login with Email
    [Tags]    Regression    Login
    Login Via Email  ${MY_Email}    ${MY_Password}
    Wait Until Element Is Visible   ${MY_Account}
    Element Should Be Visible     ${MY_Account}
    Log To Console     User Login successfully!!


TC_02_Search_Recipe
    [Documentation]     User seach a recipe from first menu
    [Tags]    Regression    Search
    Move To Dockbar  ${XiaChuFang_TabButton}
    
    Search Item From Search_Inputbox  ${Recipe_Name}
    ${SearchResult}    Get Element Attribute    ${SearchResult_FirstItem}    text
    ${Search_tag}    Run Keyword And Return Status    Should Be Equal    ${SearchResult}    ${Recipe_Name}
    #Log To Console    ${SearchResult} Search Result is ${Search_tag}
    IF    ${Search_tag} == True
        Log To Console    Search Recipe '鱼香肉丝' Succeed！
    ELSE
        Log To Console    Search Recipe '鱼香肉丝' Failed!
    END    
    #Page Should Contain Text    ${Recipe_Name}
    Click Element   ${Back_Button}
    Wait Until Element Is Visible    ${Back_Button}
    Click Element   ${Back_Button}

TC_03_Set_Profile
    [Documentation]     User set personal profile info
    [Tags]    Regression    Setting
    Move To Edit Profile
    Input User Name
    Select Gender
    Select Birthday
    Select Professional
    Select Hometown
    Input Profile Introduction
    Submit Profile
    #Close Profile Setting Page

    ${Setting_tag}    Run Keyword And Return Status    Page Should Contain Text    ${Engineer}
    Log To Console    page contain ${Engineer} status result is ${Setting_tag}     
    
    IF    ${Setting_tag} == True
        Log To Console    Profile Setting Succeed!
    ELSE
        Log To Console    Profile Setting Failed!
    END

TC_04_Test_MyLibrary
    [Documentation]     Try MyLibraray Keywords
    ${res}    Test Add    1   2   3
    Log To Console    Result of MyLibraray Keyword Result is ----->${res}
    




 
