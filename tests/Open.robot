*** Settings ***

Resource    ../resource/base.robot

*** Variables ***


*** Test Cases ***
Deve abrir o applicativo
    Open Session
    #Wait Until Element Is Visible    id=com.zzkko:id/current_country
    #Click Element    	             id=com.zzkko:id/current_country

    Wait Until Page Contains         GO SHOPPING      
    Click Text                       GO SHOPPING
    Wait Until Element Is Visible    id=com.zzkko:id/iv_close
    Click Element                    id=com.zzkko:id/iv_close