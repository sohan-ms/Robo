*** Variables ***
#Sign-in page
${LOC_INPUT_EMAIL}      name=email
${LOC_INPUT_DOMAIN}      id=domain_name
${LOC_INPUT_PASSWORD}   id=password
${LOC_SIGNIN_BTN}    xpath=//button[@type='submit']

#Amagi Now home page
${LOC_WELCOME_MSG}   xpath=//div[text()='Welcome to Amagi Now!']
${LOC_GOTIT_BTN}     xpath=//button[@class='now-MuiButtonBase-root now-MuiButton-root now-MuiButton-outlined now-now27 now-now23 now-MuiButton-outlinedPrimary']
${LOC_ONDEMAND_TAB}  xpath=//div[.='On Demand']
${LOC_PLATFORM_TAB}  xpath=//div[.='Platforms']

#Delivery page
${DELIVERY_PAGE_URL}    https://vod_test_o.test.now.amagi.tv/now/on-demand/delivery
${LOC_DELIVERY_BTN}  xpath=//div[.='Create Delivery']
${LOC_SELF_SERVE_DELIVERY_BTN}  //div[.='Self Serve Delivery']
${LOC_RULE_BASED_DELIVERY_BTN}  //div[.='Rule Based Delivery']

