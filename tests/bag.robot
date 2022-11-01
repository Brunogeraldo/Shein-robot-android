*** Settings ***

Resource    ../resource/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Variables ***
${search_bar_principal}            id=com.zzkko:id/mainSearchLlay1
${search_bar_tv}                   id=com.zzkko:id/tv_searchbar_box
${search_button}                   id=com.zzkko:id/btn_searchbar_search 
${first_product}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1] 
${bag_icon}                        accessibility_id=Shopping Bag


*** Test Cases ***
Sacola (1 Product)
    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}  

    Wait Until Element Is Visible        ${search_bar_tv}
    Input Text                           ${search_bar_tv}            2736257
    Click Element                        ${search_button}
 
    Buy XL

    Click Element                        accessibility_id=Shopping Bag

    Wait Until Page Contains             Shopping Bag
    Wait Until Page Contains             SIGN IN

Sacola (2 Product)
    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}  

    Wait Until Element Is Visible        ${search_bar_tv}
    Input Text                           ${search_bar_tv}              camisa

    Click Element                        ${search_button}

    Buy the first thing

    Click Element                        accessibility_id=BACK

    Buy the second thing

    Click Element                        accessibility_id=Shopping Bag

    Wait Until Page Contains             Shopping Bag
    Wait Until Page Contains             SIGN IN
Sacola (Remove)
    Go to base

    Wait Until Element Is Visible        ${search_bar_principal}
    Click Element                        ${search_bar_principal}  

    Wait Until Element Is Visible        ${search_bar_tv}
    Input Text                           ${search_bar_tv}            bolsa
    Click Element                        ${search_button}
    
   Nada no momento

   Click Element                        accessibility_id=Shopping Bag

   Wait Until Element Is Visible        accessibility_id=edit product quantity
   Click Element                        accessibility_id=product quantity minus 1



            
    
   
    