
*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://www.medibuddy.in/   browser=chrome
   Maximize Browser Window
   
   Set Selenium Implicit Wait    30s
   Go To    url=https://www.medibuddy.in/
   Click Element    id=wzrk-cancel
   Click Element    link=For Employer
   Log Title
   Switch Window     MediBuddy LaunchPad
   Input Text    id=getInTouchName    Anchal
   Input Text    name=getInTouchEmail    anchal15121999@gmail.com
   Input Text    name=getInTouchMobile    8107520351
   Input Text    name=getInTouchDesignation    Trainer
   Input Text    name=getInTouchEmpCount    40
   Click Element      xpath=//button[Text()='Get In Touch']
   Element Text Should Be    //div[contain(text(),'digit')]    Mobile Number should be 10 digits
   Element Should Contain    //p[    expected
   


