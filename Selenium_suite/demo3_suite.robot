
*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://www.goto.com/meeting/trial    browser=chrome
   Maximize Browser Window
   Click Element    id=truste-consent-button
   Set Selenium Implicit Wait    30s


   Input Text    name=FirstName    Anchal
   Input Text    name=LastName    Tiwari
   Input Text    name=Email    anchal15121999@gmail.com
   Input Text     name=PhoneNumber    8107520351
   Input Password   name=Password     Anchal@1512
   Select From List By Label    name=CompanySize     1 - 9
   Click Element    xpath=//button[text()='Start My Trial']


