*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***

Tc1
   Append To Environment Variable     path     F:\\Robot_session\\driver\\chromedriver_win32
   Open Browser     url=https://netbanking.hdfcbank.com/netbanking/  browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
   Click Element    xpath=//img[@alt='Go']
   ${alert_text}     Handle Alert     action=ACCEPT
   Log To Console    ${alert_text}
   Log     ${alert_text}
