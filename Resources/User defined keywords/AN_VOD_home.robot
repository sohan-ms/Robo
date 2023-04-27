*** Settings ***
Resource    ../Pages/OnDemand.robot
Resource    ../../Variables/locators_variables.robot
Resource    ../../Variables/common_variables.robot

*** Keywords ***
Click on OnDemand module
    ondemand.navigate to ondemand module

Click on Create Delivery button
    ondemand.navigate to ondemand module
    ondemand.validate 'create delivery' drop down
