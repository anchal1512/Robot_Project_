*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
   Create Dictionary     path=D:\\Mine\\hello.txt
   ${files}     List Files In Directory     path=D:\\Mine\\Company\\LT5
   Log To Console    ${files}


Tc2

   Create file     path=D:\\Mine\\hello.txt
   ${files}     List Files In Directory     path=D:\\Mine\\Company\\LT5
   Log To Console    ${files}

Tc3
   Remove File    path=:\\Mine\\hello.txt


