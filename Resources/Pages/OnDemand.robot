*** Settings ***
Library     SeleniumLibrary
Library     String

Library    DateTime
Resource    helper.robot
Resource     ../../Variables/common_variables.robot
Resource    ../../Variables/env_variables.robot
Resource    ../../Variables/locators_variables.robot

*** Keywords ***
Open Vod End Point
    [Documentation]     This is used to open the vod end point
    Create Webdriver    Chrome        ${cmn_executable_path_chrome}
    SeleniumLibrary.Go To        ${vod_end_point}
    SeleniumLibrary.Maximize Browser Window
    BuiltIn.Wait Until Keyword Succeeds     60 s     1 s    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_INPUT_EMAIL}

Input Email
    [Arguments]     ${user_email}
    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_INPUT_EMAIL}
    SeleniumLibrary.Input Text    ${LOC_INPUT_EMAIL}    ${user_email}

Input Domain
    [Arguments]     ${user_domain}
    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_INPUT_DOMAIN}
    SeleniumLibrary.Input Text    ${LOC_INPUT_DOMAIN}    ${user_domain}

Input Password
    [Arguments]     ${user_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_INPUT_PASSWORD}
    SeleniumLibrary.Input Text    ${LOC_INPUT_PASSWORD}    ${user_password}

Click Signin
    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_SIGNIN_BTN}
    SeleniumLibrary.Click Element    ${LOC_SIGNIN_BTN}
    BuiltIn.Wait Until Keyword Succeeds     60 s     1 s    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_WELCOME_MSG}
    SeleniumLibrary.click button    ${LOC_GOTIT_BTN}
    BuiltIn.Log    Login successful

Navigate to OnDemand Module
#    sleep    10s
#    SeleniumLibrary.mouse over     ${loc_ondemand_tab}
    sleep    20s
    SeleniumLibrary.Click Element    ${LOC_ONDEMAND_TAB}
    sleep    10s
    SeleniumLibrary.Click Element    ${LOC_PLATFORM_TAB}
    sleep    20s
    SeleniumLibrary.Click Element    ${LOC_ADDPLATFORM_BTN}

