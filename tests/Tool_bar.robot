*** Settings ***

Resource          ../resource/base.robot
Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***


*** Test Cases ***
Barra inferior (Category)
    
    
    Go to base

    Wait Until Element Is Visible        id=com.zzkko:id/appLogoView
    Wait Until Element Is Visible        accessibility_id=Category
    Click Element                        accessibility_id=Category

    Wait Until Page Contains             Recomendar
    Click Text                           ROUPAS                        
    Wait Until Page Contains             BLUSAS

Barra inferior (New)
    
    Go to base

    Wait Until Element Is Visible        accessibility_id=New
    Click Element                        accessibility_id=New

    Wait Until Page Contains             SHEIN NEW
    Click Element                        accessibility_id=ACESSÓRIOS FEMININO

    Capture Page Screenshot              teste_new_bar.png

Barra inferrio (Girls)
    
    Go to base

    Wait Until Element Is Visible        accessibility_id=Gals
    Click Element                        accessibility_id=Gals 

    Wait Until Page Contains             OUTFIT

Barra inferior (Me)
    
    Go to base

    Wait Until Element Is Visible        accessibility_id=Me
    Click Element                        accessibility_id=Me

    Wait Until Element Is Visible        id=com.zzkko:id/me_login_btn
    Click Element                        id=com.zzkko:id/unloginTv2

    Wait Until Element Is Visible        id=com.zzkko:id/phone_login_button

Barra inferior (Shop)
    
    Go to base

    Wait Until Element Is Visible        accessibility_id=Shop
    Click Element                        accessibility_id=Shop

    Tap    ${None}    415    1665

    


