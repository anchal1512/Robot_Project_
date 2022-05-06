*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://netbanking.hdfcbank.com/netbanking/  browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Select Frame    xpath=//frame[@name='login_page']
   Input Text    name=fldLoginUserId    Anchal
   Click Element    link=CONTINUE
   Unselect Frame
   
