*** Settings ***
Library     SeleniumLibrary
Library     String

Library    DateTime
Resource    helper.robot
Resource     ../../Variables/common_variables.robot
Resource    ../../Variables/env_variables.robot
Resource    ../../Variables/locators_variables.robot

*** Variables ***
#  @{search_text}      ASSET INFORMATION   CREATION DATE   DELIVERED DATE  PLATFORM/LICENSE


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
    [Documentation]     This is to validate user login
    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_SIGNIN_BTN}
    SeleniumLibrary.Click Element    ${LOC_SIGNIN_BTN}
    BuiltIn.Wait Until Keyword Succeeds     60 s     1 s    SeleniumLibrary.Wait Until Element Is Visible    ${LOC_WELCOME_MSG}
    SeleniumLibrary.click button    ${LOC_GOTIT_BTN}
    BuiltIn.Log    Login successful

Navigate to OnDemand Module
    [Documentation]     This is to validate ondemand module
    BuiltIn.Wait Until Keyword Succeeds     30 s     1 s    SeleniumLibrary.Click Element    ${LOC_ONDEMAND_TAB}
    SeleniumLibrary.wait until location contains    ${DELIVERY_PAGE_URL}
    seleniumlibrary.wait until element is visible    ${LOC_DELIVERY_BTN}    10s
    seleniumlibrary.page should contain element    ${LOC_DELIVERY_BTN}      10s

Validate 'Create Delivery' drop down
    [Documentation]     This is to validate Create Delivery button
    click element    ${LOC_DELIVERY_BTN}
    BuiltIn.Wait Until Keyword Succeeds     60 s     1 s       seleniumlibrary.wait until element is visible     ${LOC_SELF_SERVE_DELIVERY_BTN}
    seleniumlibrary.wait until element is visible    ${LOC_RULE_BASED_DELIVERY_BTN}

Get the headers present in the table
    [Documentation]    This is to fetch the table names
    @{headers_name} =   Get WebElements     xpath=//table/thead/tr/th
    ${get elements count} =     get element count    xpath=//table/thead/tr/th
    FOR    ${elements}   IN    @{headers_name}
            ${text}=    get text    ${elements}
            Log    Num value is ${text}
#            log to console    ${text}
    END

#    [Arguments]    @{search_text}
#    FOR    ${i}     IN RANGE    0   ${get elements count}
#        page should contain      @{search_text}[${i}]
#    END

