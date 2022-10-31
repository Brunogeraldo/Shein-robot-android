*** Settings ***

Resource     ../resource/base.robot
Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***
${search_bar_principal}            id=com.zzkko:id/mainSearchLlay1
${search_bar_tv}                   id=com.zzkko:id/tv_searchbar_box

*** Test Cases ***
Pesquisa Texto (Positive)

    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}

    Wait Until Element Is Visible        ${search_bar_tv}
    Input Text                           ${search_bar_tv}            Camisa
    Click Element                        id=com.zzkko:id/btn_searchbar_search

    Wait Until Element Is Visible        id=com.zzkko:id/btn_searchbar_bag

Pesquisa Texto (negative)

    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}

    Wait Until Element Is Visible        ${search_bar_tv}
    Click Element                        id=com.zzkko:id/btn_searchbar_search

    Wait Until Element Is Visible        id=com.zzkko:id/btn_searchbar_bag

Pesquisa Texto (Special)
    
    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}

    Wait Until Element Is Visible        ${search_bar_tv}
    Input Text                           ${search_bar_tv}            @#$%%&*
    Click Element                        id=com.zzkko:id/btn_searchbar_search

    Wait Until Page Contains             Send Feedback

Pesquisa Texto (Tags)
    
    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}

    Wait Until Element Is Visible        accessibility_id=Top
    Click Element                        accessibility_id=Top

    Wait Until Element Is Visible        id=com.zzkko:id/btn_searchbar_bag               

    


