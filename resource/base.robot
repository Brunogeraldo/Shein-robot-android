*** Settings ***

Library    AppiumLibrary

*** Variables ***
${first_product}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1] 
${second_product}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]

*** Keywords ***
Open Session
    Set Appium Timeout    20
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Emulator
    ...                   app=C://Projetos//Android//Shein//app//SHEIN.apk
    
Close Session
    Close Application

Go to base
    Wait Until Page Contains         GO SHOPPING      
    Click Text                       GO SHOPPING
    Wait Until Element Is Visible    id=com.zzkko:id/iv_close
    Click Element                    id=com.zzkko:id/iv_close  

Buy the first thing
    Wait Until Element Is Visible        ${first_product}
    Click Element                        ${first_product}
    Wait Until Element Is Visible        id=com.zzkko:id/btn_buy
    Swipe                                555    1970    551    1503
    Click Element                        accessibility_id=Gunselected option

    Click Element                        id=com.zzkko:id/btn_buy
    Wait Until Element Is Visible        id=com.zzkko:id/cart_count
Buy XL
    Wait Until Element Is Visible        ${first_product}
    Click Element                        ${first_product}
    Wait Until Element Is Visible        id=com.zzkko:id/btn_buy
    Swipe                                555    1970    551    1503
    Click Element                        accessibility_id=XL(GG)unselected option

    Click Element                        id=com.zzkko:id/btn_buy
    Wait Until Element Is Visible        id=com.zzkko:id/cart_count

Buy the second thing
    Wait Until Element Is Visible        ${second_product}
    Click Element                        ${second_product}
    Wait Until Element Is Visible        id=com.zzkko:id/btn_buy
    Swipe                                555    1970    551    1503
    Click Element                        accessibility_id=Gunselected option

    Click Element                        id=com.zzkko:id/btn_buy
    Wait Until Element Is Visible        id=com.zzkko:id/cart_count

Nada no momento
    Click Element                        ${first_product}
    Wait Until Element Is Visible        id=com.zzkko:id/btn_buy
    Swipe                                555    1970    551    1503
    
    Click Element                        id=com.zzkko:id/btn_buy
    Wait Until Element Is Visible        id=com.zzkko:id/cart_count
    
    