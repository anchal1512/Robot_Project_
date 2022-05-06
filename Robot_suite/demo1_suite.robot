*** Settings ***
Library  DateTime

*** Test Cases ***
Tc1
   Log To Console    Anchal Tiwari
   Log To Console    robot session

 Tc2
    Log To Console    Hello

Tc3
   ${my_name}          set variable     Anchal
   Log To Console    ${my_name}
   log      ${my_name}

Tc4
   ${radius}     Set Variable    10
   ${output}    Evaluate     3.14*${radius}*${radius}
   Log To Console    ${output}

Tc5
   ${base}     Set Variable  25
   ${height}   Set Variable  1
   Log To Console    ${base}
   ${result}  Evaluate    (${base}*${height}/2)
   Log To Console    ${result}
   
Tc6
   ${base1}  Set Variable  25
   ${base2}  Set Variable  25
   ${height}  Set Variable  1
   ${res}  Evaluate    (${base1}+${base2})*${height}/2
   Log To Console    ${res}

Tc7
   ${date}



   

