*** Settings ******

Resource    ../Settings/Settings.robot

Suite Setup     Launch App
Suite Teardown      Close All Apps

*** Test Cases ****** 
User Login
    [Documentation]     User login with Email
    
    Login Via Email  ${MY_Email}    ${MY_Password}
    Wait Until Element Is Visible   ${MY_Account}
    Element Should Be Visible     ${MY_Account}
    Log     Login successfully!!


Search Recipe
    [Documentation]     User seach a recipe from first menu
    Move To Dockbar  ${XiaChuFang_TabButton}
    
    Search Item From Search_Inputbox  ${Recipe_Name}
    
    Page Should Contain Text    ${Recipe_Name}
    Click Element   ${Back_Button}
    Wait Until Element Is Visible    ${Back_Button}
    Click Element   ${Back_Button}

Set Profile
    [Documentation]     User set personal profile info
    Move To Edit Profile
    Input User Name
    Select Gender
    Select Birthday
    Select Professional
    Select Hometown
    Input Profile Introduction
    Submit Profile
    #Close Profile Setting Page

    Page Should Contain Text    ${Engineer}
    
    
    ${res}    Test Add    1   2   3
    

   


 
