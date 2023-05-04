*** Settings ***
Resource    ../Resources/User defined keywords/AN_VOD_landing.robot
Resource    ../Resources/User defined keywords/AN_VOD_home.robot

Suite Setup     Run Keywords    AN_VOD_landing.Navigate to vod end point  AND  AN_VOD_landing.Enter valid credentials and sign in
#Suite Teardown  Run Keywords    AP_home.Undo Scheduling     AND     Close All Browsers
Suite Teardown     Close All Browsers

*** Test Cases ***
TC_01 Navigate to the OnDemand
    [Documentation]     Test case 1
    [Tags]    smoke
    AN_VOD_home.Click on OnDemand module

TC_02 Validate the table on delivery page
    [Documentation]    Test case 2
    [Tags]    smoke
    an_vod_home.get the elements present in the headers of the table

TC_03 Validate the Create Delivery button in OnDemand module
    [Documentation]    Test case 3
    [Tags]    smoke
    AN_VOD_home.Click on Create Delivery button

TC_04 Validate the 'Ticket no' column which should unique 13 digit numbers
    [Documentation]    Test Case 4
    [Tags]    regr
    AN_VOD_home.Get the TICKET NO column

TC_05 Validate the functionality of the Filter icon
    [Documentation]    Test Case 5
    [Tags]    smoke
    AN_VOD_home.Click on the Filter Icon
