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

Get the elements present in the headers of the table
    ondemand.navigate to ondemand module
    ondemand.get the headers present in the table

Get the TICKET NO column
    ondemand.navigate to ondemand module
    ondemand.get the ticket no's present in the table

Click on the Filter Icon
    ondemand.navigate to ondemand module
    ondemand.click on the filter icon
