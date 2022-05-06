
*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     https://www.salesforce.com/in/form/signup/freetrial-sales/?d=topnav2-btn-ft     browser=chrome
   Maximize Browser Window




   Input Text    name=UserFirstName    Anchal
   Input Text    name=UserLastName    Tiwari
   Input Text    name=UserEmail    anchal15121999@gmail.com
   Select From List By Label    name=UserTitle    IT Manager
   Input Text    name=CompanyName    LTTS
   Select From List By Value    name=CompanyEmployees      101 - 500 employees
   Select From List By Label    name=CompanyCountry     United Kingdom
   Click Element     xpath=(//div[@class='checkbox-ui'])
   Click Element    name=start my free trial
   Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]     Enter a valid phone number

