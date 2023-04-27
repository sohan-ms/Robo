*** Settings ***
Library     String
Library    Collections

*** Keywords ***
Convert series name to Id
    [Arguments]     ${series_name}
    ${series_name_converted}=   Remove String    ${series_name}      ${SPACE}
    ${series_name_converted}=   Convert To Lower Case    ${series_name_converted}
    ${series_name_converted}=   Set Variable    series${series_name_converted}
    Log    ${series_name_converted}
    [Return]    ${series_name_converted}

Convert asset name to Id
    [Arguments]     ${asset_name}
    ${asset_name_converted}=    Remove String    ${asset_name}   -
    ${asset_name_converted}=    Remove String    ${asset_name_converted}  _
    Log    ${asset_name_converted}
    [Return]     ${asset_name_converted}
