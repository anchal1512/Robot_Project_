*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://www.Facebook.com/     browser=chrome
   Maximize Browser Window
   Click Element    link=Create new Account
   Input Text    name=firstname    Anchal
   Input Text    name=lastname    Tiwari
   Input Text    id=email    anchal15121999@gmail.com
   Input Text    id=re-enteremail    anchal15121999@gmail.com
   Input Password    id=Pass    Anchal@


