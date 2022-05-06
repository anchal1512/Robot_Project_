*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://www.medibuddy.in/   browser=chrome
   Maximize Browser Window

   Set Selenium Implicit Wait    30s
   Go To    url=https://www.db4free.net/
   Element Should Contain    locator    expected