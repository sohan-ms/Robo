*** Variables ***
#Sign-in page
${LOC_INPUT_EMAIL}      name=email
${LOC_INPUT_DOMAIN}      id=domain_name
${LOC_INPUT_PASSWORD}   id=password
${LOC_SIGNIN_BTN}    xpath=//button[@type='submit']

#Amagi Now home page
${LOC_WELCOME_MSG}  xpath=//div[text()='Welcome to Amagi Now!']
${LOC_GOTIT_BTN}     xpath=//button[@class='now-MuiButtonBase-root now-MuiButton-root now-MuiButton-outlined now-now27 now-now23 now-MuiButton-outlinedPrimary']
${LOC_ONDEMAND_TAB}     xpath=//div[.='On Demand']

#OnDemand
##calendar
#${LOC_CALENDAR}     class=amagi-datepicker
#${LOC_NEXT_CALENDAR_MONTH}  css=[aria-label="Next Month"]
#${LOC_DAY_001}  class=react-datepicker__day--001
#${LOC_SLOT}     //*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[4]/div[1]/div[1]
##${LOC_SLOT}     class=slot-weekday
##${LOC_SLOT}     xpath://*[@class="calendar-column"]//following-sibling::*
#
##Media
#${LOC_EPISODE_CONTAINER}      id=episodesContainer
#${LOC_SERIES_SEASON_CARD}     id=seriesafterschoolsnack
#
##Schedule media
#${LOC_SCHEDULE_BTN}     xpath://*[contains(text(), "SCHEDULE")]
#${LOC_CANCEL_BTN}   xpath://*[contains(text(), "Cancel")]
#${LOC_DURATION_FLEXIBLE_RADIO_BTN}  xpath://*[contains( text(), "Flexible")]
#${LOC_DURATION_FIXED_RADIO_BTN}  xpath://*[contains( text(), "Fixed")]
#${LOC_FLEXIBLE_DURATION_TEXT}    xpath://*[contains(text(), "Program duration will be a total of asset runtime and break(s)")]
#${LOC_FIXED_DURATION_TEXT}    xpath://*[contains(text(), "Each program scheduled will be of a fixed duration of")]
#${LOC_CHECKBOX_PLAY_BACKTOBACK}     //*[@id="checkbox"]/span
#${LOC_PLAY_BACKTOBACK_TEXT}     xpath://*[contains(text(), "Play all selected back to back")]
#${LOC_PROGRAMS_DAY}     xpath://*[@class="amagi-number-container"]
#${LOC_START_TIME_TEXT}  xpath://*[contains(text(), "Start time ")]
#${LOC_START_TIME}   xpath://*[@class="amagi-timepicker-component"]
#${LOC_START_DATE}   start_date
#${LOC_END_DATE}     xpath://*[@name="end_date"]
#${LOC_SCHEDULE_PATTREN}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[6]/div[1]/div/div/div/div[1]/div[2]
#${LOC_REPEAT_BUTTON}    xpath://*[@class="repeat-fields-container"]/button
#${LOC_SELECTED_COUNT}   xpath://*[@class="selected-count"]
#${LOC_SHUFFEL_BUTTON}   xpath://*[contains(text(), "Shuffle")]
#${LOC_FIXED_DURATION_TIMEPICKER}    xpath://*[@class="hhmmss"]/div/span/input
#${LOC_DURATION_RUN_TIME_ERROR_MESSAGE}    xpath://*[contains(text(), "Duration of some assets is more than fixed duration.")]
#${LOC_TIMEPICKER_SELECT_HOUR_02}    xpath://*[contains(@class, "amagi-timepicker-component-panel-combobox")]/div/ul/li[3]
#${LOC_TIMEPICKER_SELECT_HOUR_00}    xpath://*[contains(@class, "amagi-timepicker-component-panel-combobox")]/div/ul/li[1]
#${LOC_PER_DAY}  name=per_day
#${LOC_PER_DAY_MINUS_BUTTON}     xpath://*[@class="btn input-number-btn minus btn"]
#${LOC_PER_DAY_PLUS_BUTTON}   xpath://*[@class="btn input-number-btn plus btn"]
#${LOC_PLAY_BACKTOBACK}      name=back_to_back
#${LOC_START_TIME_1}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[4]/div[1]/div/p
#${LOC_START_TIME_2}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[4]/div[2]/div/p
#${LOC_START_TIME_3}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[4]/div[3]/div/p
#${LOC_START_TIME_4}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[4]/div[4]/div/p
#${LOC_START_TIME_5}     xpath://*[@id="multi-select-schedule-scroll-container"]/div[4]/div[5]/div/p
#${LOC_SCHEDULE_PATTREN_VALUE}   xpath://*[@id="multi-select-schedule-scroll-container"]/div[6]/div[1]/div/div/div/div[1]/div[1]
#${LOC_SCHEDULE_PATTREN_DROPDOWN}    xpath://*[@id="react-select-4-listbox"]
#${LOC_START_DATE_CALENDAR}  xpath://*[@class="react-datepicker__month-container"]
#${LOC_TEXT_BELOW_CALENDAR}  xpath://*[@id="multi-select-schedule-scroll-container"]/div[5]/div/div[2]/span[2]
#${LOC_CLOSE_REPEAT}     //*[@id="id-undefined"]/div/h3/button
#${LOC_COLLAPSE_ICON}    //*[@id="id-undefined"]/div/div/div
#${LOC_REPEAT_PLAY_BACKTOBACK}   //*[@id="body-id-undefined"]//following-sibling::*[@class="box"]
#${LOC_REPEAT_PROGRAM_PER_DAY}   //*[@id="body-id-undefined"]//following-sibling::*[@class="amagi-input-number"]
#${LOC_REPEAT_START_TIME}    //*[@id="body-id-undefined"]/div/div[3]/div/div/div/div/span[1]/input
#${LOC_REPEAT_START_DATE}    name=repeats.0.start_date
#${LOC_REPEAT_END_DATE}      name=repeats.0.end_date
#${LOC_CLOSE_SCHEDULE_MEDIA_POPUP}   //*[@class="btn close btn"]
#${LOC_NEW_SCHEDULE_TIME_HOUR}    xpath://*[contains(@class, "amagi-timepicker-component-panel-combobox")]/div/ul/li[10]
#${LOC_NEW_SCHEDULE_TIME_MINUTE}     xpath://*[@class="amagi-timepicker-component-panel-select"][2]/ul/li[1]
#${LOC_NEW_START_TIME}   xpath://*[contains(text(), "09:15 AM")]
#${LOC_NEW_START_DATE}   xpath://*[@class="react-datepicker__day react-datepicker__day--013"]
#${LOC_FIXED_DURATION_TIME}   xpath://*[contains(text(), "07:15 AM")]
#${LOC_UNDO_SUCCESSFUL}      xpath://*[contains(text(), "Undo successful")]
#${LOC_SCHEDULED_SUCCESSFUL}     xpath://*[contains(text(), "Programs scheduled successfully")]
#${LOC_SCHEDULING_CONFLICT_MESSAGE}  xpath://*[contains(text(), "Scheduling Conflict(s) Found!")]
#
##DST
#${LOC_CURRENT_MONTH}    class=react-datepicker__current-month
#${LOC_DST_SLOT}     xpath://*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]
#${LOC_DST_DISABLED_SLOT}    xpath://*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[21]
#${LOC_DST_FORWARD_LABEL}    xpath://*[contains(text(), "DST")]
#${LOC_DST_FORWARD_DISABLED_TEXT}    xpath://*[contains(text(), "Scheduling not allowed between")]
#${LOC_DST_FALLBACK_HOUR}    xpath://*[@id="1AM"]
#${LOC_DST_FALLBACK_NORMAL_HOUR}     xpath://*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[20]/div[1]/div[1]
#${LOC_DST_FALLBACK_DST_HOUR}    xpath://*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[20]/div[2]/div[1]
#${LOC_SCHEDULED_PROGRAM_TITLE}  xpath://*[contains(@class,"scheduled")]/div/div/div/div/span
#${LOC_DST_FALLBACK_PROGRAM_SCHEDULE_SLOT}   //*[contains(text(), "0970fd4d-after-school-snack-104")]
#${LOC_SWITCH TO DAY VIEW}       //*[@id="planner-scroll-container"]/div/div[1]/div[1]/div[1]/button
#${LOC_DST_DRAG_AND_DROP_DAY_VIEW}  //*[@id="planner-scroll-container"]/div/div[2]/div[1]/div[2]/div[4]
#${LOC_DST_DELETE_PROGRAM}   xpath://*[contains(text(), "Delete")]
#${LOC_DST_DAY_VIEW_TEXT}    xpath://*[contains(text(), "DST Shift")]
#${LOC_DST_HEADER_IN_CALENDAR}   //*[@class="dst-header"]
#${LOC_CALENDAR_PREVIOUS_DAY}    //*[@id="previous-month"]
#${LOC_CALENDAR_NORMAL_DAY_SLOT}     //*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[20]/div[2]
#${LOC_CALENDAR_ASSET_SCHEDULED_IN_DST_SLOT}     xpath://*[contains(text(), "Ready Eater One!")]
#${LOC_ADD_TAGS_PROGRAM_CARD}    //*[contains(text(), "ADD")]
#${LOC_SCHEDULED_IN_DST_TIME_PROGRAMCARD}    //*[contains(text(), "Scheduled in *DST +1hr")]
#${LOC_CLOSE_PROGRAMCARD}    //*[@id="planner-scroll-container"]/div/div[3]/div/div/div/div[3]/button
#${DST_TOOLTIP_HEADER}   DST (Daylight Saving Time)
#${DST_TOOLTIP_DESCRIPTION}  Program scheduled in DST period will have a fallback of 1 hour.
#${DST_TOOLTIP_IN_REPEAT_STARTDATE_CALENDAR}     //*[@class="custom-date-tooltip"]
#${DST_TOOLTIP_IN_REPEAT_STARTDATE_CALENDAR_1H}  //*[contains(text(), "+1hr")]
#${DST_TOOLTIP_1H_TEXT}  +1hr
#${DST_TOOLTIP_DST_TEXT}     *DST
#${DST_FALLBACK_DATE_LOCATOR}    //*[@class="react-datepicker__day react-datepicker__day--004 react-datepicker__day--weekend"]
#${LOC_CALENDAR_9AM}     xpath://*[@id="9AM"]
#${LOC_CALENDAR_9AM_SLOT}    //*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[4]/div[1]
#${LOC_SORT_DROP_DOWN}   //*[@id="root"]/div/div[3]/div[1]/div[1]/form/div[1]/div[2]/div/div[1]/div[2]
#${LOC_SORT_LOW_HIGH_DURATION}   //*[@id="react-select-3-option-3"]
#${LOC_CALENDAR_730AM_SLOT}  //*[@id="planner-scroll-container"]/div/div[2]/div[2]/div[2]/div[1]/div[2]/div[3]