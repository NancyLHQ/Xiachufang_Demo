*** Settings ***
Library    AppiumLibrary
Library    MyLibrary

Resource    ../KeyWords/Keywords.robot
Resource    ../Variables/Locator.robot   
Resource    ../BaseKeywords/BaseKeywords.robot
Resource    ../Variables/TestData.robot

# Suite Setup     Launch App
# Suite Teardown      Close All Apps
*** Variables ***
# ---------  Test Devices Setting  ---------

# #Pixel 6 Pro
# ${AppiumServer}       http://0.0.0.0:4723/wd/hub
# ${platformName}       Android
# ${platformVersion}    12
# ${deviceName}         Pixel 6 Pro
# ${App}                /Users/huaqing.luo/Downloads/xiachufang.apk
# ${appPackage}         com.xiachufang
# ${udid}               1C191FDEE0089W

#GalaxNote20
${AppiumServer}       http://0.0.0.0:4723/wd/hub
${platformName}       Android
${platformVersion}    12
${deviceName}         Galaxy Note20 Ultra 5G
${App}                /Users/huaqing.luo/Downloads/xiachufang.apk
${appPackage}         com.xiachufang
${udid}               R5CT215Y9MX

# #Galaxy S21 5G
# ${AppiumServer}       http://0.0.0.0:4723/wd/hub
# ${platformName}       Android
# ${platformVersion}    12
# ${deviceName}         Galaxy S21 5G 
# ${App}                /Users/huaqing.luo/Downloads/xiachufang.apk
# ${appPackage}         com.xiachufang
# ${udid}               R3CR310W8DM


#--------- Test Account Setting ---------
${MY_Email}             707448071@qq.com
${MY_Password}          Samsung21