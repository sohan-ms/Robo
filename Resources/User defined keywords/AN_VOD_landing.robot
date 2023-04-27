*** Settings ***
Resource    ../Pages/OnDemand.robot
Resource    ../../Variables/common_variables.robot

*** Keywords ***
Navigate to vod end point
    OnDemand.Open Vod End Point

Enter valid credentials and sign in
    OnDemand.Input Email     ${user_email}      #Provide user email
    OnDemand.Input Password  ${user_password}    #Provide user password
    OnDemand.Input Domain    ${user_domain}
    OnDemand.Click Signin
