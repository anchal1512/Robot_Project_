*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://www.Facebook.com/     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Click Element    link=Create New Account

   Input Text    name=firstname    Anchal
   Input Text    name=lastname    Tiwari
   Input Text    name=reg_email__    anchal15121999@gmail.com
   Input Text    name=reg_email_confirmation__    anchal15121999@gmail.com
   Input Password  id=password_step_input    Anchal@
   Select Radio Button    sex   1
   Select From List By Label    name=birthday_day  1
   Select From List By Label    name=birthday_month   Jan
   Select From List By Label    name=birthday_year  2000
   Click Element    name=websubmit
