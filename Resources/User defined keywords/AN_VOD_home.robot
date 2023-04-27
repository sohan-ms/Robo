*** Settings ***
Resource    ../Pages/OnDemand.robot
Resource    ../../Variables/locator_variables.robot
Resource    ../../Variables/common_variables.robot

*** Keywords ***
Click on OnDemand module
    ondemand.navigate to ondemand module

#Drag and drop a series on to Calender
#    planner.Move Calender To Future
#    planner.Python drag and drop a series
#    planner.Check schedule media popup
#
#Drag and Drop an asset at time 6:15
#    planner.Python drag and drop an asset from Media Library      ${asset_name_1}      ${LOC_DST_SLOT}
#    planner.Check schedule media popup
#
#Drag and drop an asset at time 9AM
#    planner.Python drag and drop an asset from Media Library    ${asset_name_2}     ${LOC_CALENDAR_9AM_SLOT}
#    planner.Check schedule media popup
#
#Drag and Drop smallest asset at 730AM
#    planner.Python drag and drop an asset from Media Library    ${ArrowTVBumper}     ${LOC_CALENDAR_730AM_SLOT}
#    planner.Check schedule media popup
#
#Schedule Asset
#    planner.Click on Schedule Button
#
#Click Schedule Button
#    planner.Click Element    ${LOC_SCHEDULE_BTN}
#    BuiltIn.Sleep    2 s
#
#Go To New Calendar Date
#    planner.Move Calendar to New Date
#
#Check Asset is Scheduled on Edited Start Date
#    FOR    ${episode_name}    IN    @{episode_names}
#        planner.Check if element is present in webpage    ${episode_name}
#
#    END
#
#Check Asset is Scheduled on Edited Start time
#    planner.Check the start time of first episode
#
#Undo Scheduling
#    planner.Click on Undo button
#
#
#Check Schedule Media pop up
#    planner.Check Schedule button
#    planner.Check Cancel button
#    planner.Check Duration Radio Button and Text
#    planner.Check Back to Back Playback and Text
#    planner.Check programs per day
#    planner.Check start time
#    planner.Check Start and End Date
#    planner.Check Schedule Pattren
#
#Verify the functionlity of Start asset field
#    planner.Fetch episode Ids
#
#Verify Flexible radio button is selected
#    planner.Check Radio button is Selected    target_duration_type    FLEXIBLE
#
#Select Fixed Duration radio button
#    planner.Click Radio fixed duration radio button
#
#Verify Fixed radio button is selected
#    planner.Check Radio button is Selected    target_duration_type    FIXED
#
#Check set duration field
#    planner.Check fixed duration field
#
#Check duration field time format
#    ${value}=   planner.Get timepicker value
#    BuiltIn.Should Be Equal As Strings    "${value}"    "01 : 00 : 00"
#
#Check text under fixed duration button
#    planner.Get Text Under Fixed Duration button
#
#Increase fixed duration hour
#    planner.Increase hour in timepicker
#
#Decrease fixed duration hour
#    planner.Decrease hour in timepicker
#
#Select Flexible duration radio button
#    planner.Click Radio flexible duration radio button
#
#Check Time picker is disappeared
#    planner.Check element is not present in webpage      ${LOC_FIXED_DURATION_TIMEPICKER}
#
#Check Duration Run Time Error message
#    planner.Check if element is present in webpage    ${LOC_DURATION_RUN_TIME_ERROR_MESSAGE}
#
#Check Duration Run Time Error message is not present
#    planner.Check element is not present in webpage    ${LOC_DURATION_RUN_TIME_ERROR_MESSAGE}
#
#Select progams per day text field
#    planner.Click on programs per day field
#
#Increase and Decrese option should be displayed
#    planner.Check if element is present in webpage    ${LOC_PER_DAY_MINUS_BUTTON}
#    planner.Check if element is present in webpage    ${LOC_PER_DAY_PLUS_BUTTON}
#
#Check 1 shoul be displayed by default in program per day
#    planner.Get Value in program per day and compare     1
#    planner.Click Element   ${LOC_PER_DAY_PLUS_BUTTON}
#    planner.Get Value in program per day and compare     2
#    planner.Click Element   ${LOC_PER_DAY_MINUS_BUTTON}
#    planner.Get Value in program per day and compare     1
#
#Check play back to back is not displayed
#    planner.Check element is not present in webpage    name=back_to_back
#
#Select Programs per day to
#    [Arguments]     ${number_of_days}
#    FOR    ${count}    IN RANGE    1    ${number_of_days}
#        planner.Click Element   ${LOC_PER_DAY_PLUS_BUTTON}
#    END
#    planner.Get Value in program per day and compare     ${number_of_days}
#
#Set Programs per day to 1
#    [Arguments]     ${number_of_days}
#    FOR    ${count}    IN RANGE    1    ${number_of_days}
#        planner.Click Element   ${LOC_PER_DAY_MINUS_BUTTON}
#    END
#    planner.Get Value in program per day and compare     1
#
#Verify Start time field
#    [Arguments]     ${number_of_start_time}
#    FOR    ${count}    IN RANGE    1    ${number_of_start_time}
#        planner.Get Text and compare with expected      ${LOC_START_TIME_${count}}     Start time ${count} *
#
#    END
#
#Check Schedule Pattern field
#    planner.Get Schedule Pattern field
#
#Verify Schedule Pattern daily is selected
#    planner.Check options selected in Schedule Pattern field and compare   ${LOC_SCHEDULE_PATTREN_VALUE}  Daily
#
#Verify Options in Schedule Pattern Dropdown
#    planner.Select Schedule Pattern Dropdown
#    planner.Check options selected in Schedule Pattern field and compare    ${LOC_SCHEDULE_PATTREN_DROPDOWN}   DailyWeekly on MondayWeekendWeekdaysCustom
#
#Change Programs per day and compare end dates
#    ${end_date_1}=  planner.Get End Date
#    Select Programs per day to  2
#    ${end_date_2}=  planner.Get End Date
#    Should Not Be Equal As Strings    ${end_date_1}    ${end_date_2}
#    Set Programs per day to 1   2
#
#Check Repeat button is present
#    planner.Check Repeat Button
#
#Check Schedule Pattren Dropdown is displayed
#    planner.Select Schedule Pattern Dropdown
#
#Check Start Date is displayed
#    planner.Check if element is present in webpage    ${LOC_START_DATE}
#
#Select Start date
#    planner.Click Element    name=start_date
#
#Check Fixed duration scheduling
#    planner.Check if element is present in webpage    ${LOC_FIXED_DURATION_TIME}
#
#Check Calendar is dispalyed
#    planner.Check if element is present in webpage    ${LOC_START_DATE_CALENDAR}
#
#Check Text Below calendar
#    planner.Get Text and compare with expected    ${LOC_TEXT_BELOW_CALENDAR}    5 programs will be scheduled.
#
#Add Repeat
#    planner.Click Repeat Button
#
#Add Play Back to Back
#    planner.Select Back to Back Playback
#
#Collapse Repeat with minus icon
#    planner.Check the minus icon
#    planner.Click Element    ${LOC_COLLAPSE_ICON}
#
#Verify minus icon is not shown
#    planner.Check element is not present in webpage    ${LOC_COLLAPSE_ICON}
#
#Clear Repeat
#    [Arguments]     ${number_of_times}
#    FOR    ${count}    IN RANGE    0    ${number_of_times}
#         planner.Click Element  ${LOC_CLOSE_REPEAT}
#    END
#
#Click Repeat multiple times
#    [Arguments]     ${number_of_times}
#    FOR    ${count}    IN RANGE    0    ${number_of_times}
#         Add Repeat
#    END
#
#Verify fields in Repeat option
#    planner.Check if element is present in webpage    ${LOC_REPEAT_PLAY_BACKTOBACK}
#    planner.Check if element is present in webpage    ${LOC_REPEAT_PROGRAM_PER_DAY}
#    planner.Check if element is present in webpage    ${LOC_REPEAT_START_TIME}
#    planner.Check if element is present in webpage    ${LOC_REPEAT_START_DATE}
#    planner.Check if element is present in webpage    ${LOC_REPEAT_END_DATE}
#
#Close Schedule media pop up
#    planner.Click Element    ${LOC_CLOSE_SCHEDULE_MEDIA_POPUP}
#    planner.Check element is not present in webpage    ${LOC_SCHEDULE_BTN}
#
#
#Cancel Schedule media pop up
#    planner.Click Element    ${LOC_CANCEL_BTN}
#    planner.Check element is not present in webpage    ${LOC_SCHEDULE_BTN}
#
#Change Start Time
#    planner.Click Element    ${LOC_START_TIME}
#    planner.Check if element is present in webpage    ${LOC_NEW_SCHEDULE_TIME_HOUR}
#    planner.Click Element    ${LOC_NEW_SCHEDULE_TIME_HOUR}
#    planner.Check if element is present in webpage    ${LOC_NEW_SCHEDULE_TIME_MINUTE}
#    planner.Click Element    ${LOC_NEW_SCHEDULE_TIME_MINUTE}
#    planner.Click Outside to close the Time Picker
#
#Change Start Date
#    planner.Click Element    name=start_date
#    planner.Check if element is present in webpage    //*[@class="react-datepicker__current-month"]
#    planner.Select new start date in datepicker
#
#Check Home page is displayed
#    planner.Check Home page is displayed
#
#Move Calendar to DST forward date
#    planner.Calaulated the difference in months and move calendar     ${dst_forward_date}   ${dst_forward_day}
#    planner.Check if DST forward is Displayed
#
#Move Calendar to fallback date
#    planner.Calaulated the difference in months and move calendar     ${dst_fallback_date}   ${dst_fallback_day}
#    planner.Check if DST fallback is Displayed
#
#Drag and Drop series to DST fallback normal hour
#    planner.Drag and drop series into DST fallback time normal hour
#    planner.Check schedule media popup
#
#Check Start Schedule in DST fallback period
#    planner.Check if element is present in webpage    xpath://*[contains(text(), "Start schedule in")]
#
#Scroll to DST fallback hour
#    planner.Scroll DST fallback time slot into view
#
#Scroll to 9AM
#    planner.Scroll to 9AM
#
#Check DST forward Time slot
#    planner.Scroll to DST forward disabled slot
#    planner.Check DST disabled text
#
#Select Play BackToBack
#    planner.Click Element    xpath://*[contains(text(), "Play all selected back to back")]
#
#Check Asset if assets are scheduled in normal and dst hours
#    planner.Check program schedule continuation into DST
#
#Drag and Drop series to DST fallback DST hour
#    planner.Drag and drop series into DST fallback time dst hour
#    planner.Check schedule media popup
#
#Drag and Drop series to slot on normal day
#    planner.Drag and drop series on normal day time dst hour
#    planner.Check schedule media popup
#
#Start schedule DST should be selected
#    planner.Check if start schedule dst is selected
#
#Asset Should be scheduled in DST fallback DST hour
#    planner.Check the DST fallback DST hour
#
#Asset should be scheduled in DST hour
#    planner.Check Asset Scheduled in DST hour
#
#Switch to Day view
#    planner.Change to Day view
#
#Day view should contain DST text
#    planner.Check if element is present in webpage    ${LOC_DST_DAY_VIEW_TEXT}
#
#Drag and Drop series in DST day view
#    planner.Drag and drop series into DST fallback time dst hour day view
#
#Check Asset is scheduled
#    planner.Check if element is present in webpage    ${LOC_DST_FALLBACK_PROGRAM_SCHEDULE_SLOT}
#
#Delete Scheduled Asset
#    planner.Double click on scheduled asset and delete
#
#DST Label should be displayed on Calendat
#    planner.Check if element is present in webpage    ${LOC_DST_HEADER_IN_CALENDAR}
#
#Move Calendat back by defined number
#    [Arguments]     ${number_of_days}
#    FOR    ${day}    IN RANGE    0    ${number_of_days}
#        planner.Click Element    ${LOC_CALENDAR_PREVIOUS_DAY}
#    END
#
#Open program card
#    planner.Click on asset and open program card
#
#Close program card
#    planner.click on close button in program card
#
#Verify Tooltip text
#    planner.Hover over DST and verify Tooltip text
#
#Open Repeat start Date Calendar and verify tooltip text
#    planner.Click On Repeat Start Date calendar and verify tooltip text
#
#Conflict Error Message should be displayed
#    planner.Verify the Error message
#
#Sort the assets from lowest to highest duration
#    planner.Click on sort filter
#    planner.Click on low to high duration
#    planner.Wait Asset to be visible in media library   ${ArrowTVBumper}
#
#Attach asset to top
#    planner.Right Click on asset    ${asset_name_2}
#    planner.Select Attach asset to Top
#
#Attach asset to bottom
#    planner.Right Click on asset    ${asset_name_1}
#    planner.Select Attach asst to Bottom
#
#Check that asset has moved to upper time slot
#    planner.Check the asset is shifted to new time slot     07:30 AM
#
#Check that asset has moved to lower time slot
#    planner.Check the asset is shifted to new time slot     06:40 AM
#
#Right Click
#    planner.Right Click on asset    ${asset_name_2}