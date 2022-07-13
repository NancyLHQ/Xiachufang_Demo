*** Variables ***
#Element Location
${LAUNCH_APP_AGREE}      xpath=//*[@text="同意并继续"]
${MINE_TabButton}       xpath=//*[@text="我"]
${FORCE_AGREE}          id =  com.xiachufang:id/cb_agreement
${Update_Next_Button}    xpath=//*[@text="下次再说"]
${LOGIN_EMAIL}          xpath=//android.widget.ImageButton[@content-desc="使用邮箱登录"]
${EMAIL_INPUTBOX}       id=com.xiachufang:id/login_account_edit_text
${PASSWORD_INPUTBOX}    id =com.xiachufang:id/login_password_edit_text
${LOGIN_BUTTON}         id=com.xiachufang:id/login_btn
${MY_Account}           id=com.xiachufang:id/main_profile_user_name

#Search case
${XiaChuFang_TabButton}    id=com.xiachufang:id/text
${Alert_Icon}           xpath=//android.widget.RelativeLayout[@content-desc="消息"]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ImageView
${Search_Inputbox}      id=com.xiachufang:id/search_edit_text
                           
${Search_Button}        id=com.xiachufang:id/search_btn
${Recipe_Target}        xpath=//*[@text="智能排序"]
${Back_Button}          id=com.xiachufang:id/navigation_img_view
${SearchResult_FirstItem}                     id=com.xiachufang:id/common_first_text   

#set profile
${Profile_Edit_Button}          xpath = //*[@text="编辑"]           
${Personal_Profile_Text}        id = com.xiachufang:id/man_profile_user_info_container   #com.xiachufang:id/main_profile_info_tv

${EditProfile_Button}            id = com.xiachufang:id/personal_edit_button          #com.xiachufang:id/navigation_bar_title_layout
${Gender_SelectBox}             id = com.xiachufang:id/profile_setting_gender
${Gender_Scroll}                id = com.xiachufang:id/gender_wheel
${Gender_Confirm_Button}        id = com.xiachufang:id/confirm_btn
${Birth_Setting_Area}           id = com.xiachufang:id/profile_setting_birthday
${Birthday_Calender}            xpath = //android.view.View[@content-desc="03 March 2022"]    
${Birth_OK_Button}              id = android:id/button1
${Profile_Save_Button}          id = com.xiachufang:id/navigation_right_btn
${Pre_Calander_Button}          id = android:id/prev
${Profession_Button}            id = com.xiachufang:id/profile_setting_profession
${Engineer_Text}                xpath = //*[@text="工程师"]
${Profile_Close_Button}         id = com.xiachufang:id/navigation_right_btn
${Select_Year_Button}           id = android:id/date_picker_header_year
${Target_Year_ScrollArea}       id = android:id/date_picker_year_picker
${Target_Year_button}           xpath = //*[@text="2017"]
${Profile_Username_Inputbox}    id = com.xiachufang:id/profile_setting_name
${Profile_Hometown_Selectbox}    id = com.xiachufang:id/profile_setting_location
${Profile_Hometown_Confirm_Button}        id = com.xiachufang:id/city_picker_finish_btn
${Profile_Intro_Inputbox}        id = com.xiachufang:id/profile_setting_desc
                                  

