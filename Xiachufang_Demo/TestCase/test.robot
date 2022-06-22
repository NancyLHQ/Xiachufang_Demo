*** Settings ******
Library    AppiumLibrary
Library    MyLibrary
 
# Resource    ../Keywords/Keywords.robot
# Resource    ../BaseKeywords/BaseKeywords.robot
# Suite Setup     Launch App
# Suite Teardown      Close All Apps

*** Test Cases ****** 
Test MyLibrary
    Log     Going to MyLibrary
    
    ${res}    Test Add    1    2    3
    
    Log    ${res} 
    Print Hello

# TEST SWIPE

#     ${Window_Width}     Get Window Width    
#     ${Window_Height}    Get Window Height
#     ${Window_Width_Start}     evaluate    ${Window_Width}*0.5
#     ${Window_Width_End}       evaluate    ${Window_Width}*0.5
#     ${Window_Height_Start}     evaluate    ${Window_Width}*0.8
#     ${Window_Height_End}     evaluate    ${Window_Width}*0.4
#     #Click Element   com.xiachufang:id/recycler_view
#     # FOR    ${i}    IN RANGE    3   
#     #         sleep   2
#     #         ${res}      Run Keyword And Return Status    Click Element      com.xiachufang:id/recycler_view     
#     #         Run Keyword If      ${res}     Exit For Loop 

#     #         Swipe     ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   1000
#     #         Sleep   3
#     #         Log    Swiped！
#     # END

#     #Click Element      com.xiachufang:id/recycler_view  
#     Swipe     ${Window_Width_Start}    ${Window_Height_Start}    ${Window_Width_End}    ${Window_Height_End}   1000
#     Click Element   com.xiachufang:id/recycler_view
#     #Scroll      //*[@text="为你推荐"]     //*[@text="立即查看"]
#     Log     Scrolled!


    
   
        

    

    




 
