*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          Chrome
${INPUT_FirstName}    545454    
${INPUT_IDCARD}      000000000000
${INPUT_PASSWORD}    1111111
${INPUT_PHONENUM}    02365
${INPUT_EMAIL}    jsfdgjh@gmail.com    


${RESULT_FirstName}    Must be in English only
${RESULT_IDCARD}    ใส่ให้ครบ 13 หลักสิ
${RESULT_PASSWORD}    ใส่ให้มันครบ 8 ตัวสิ
${RESULT_PHONENUM}    ใส่เบอร์ให้ครบ 10 ตัวสิ
${RESULT_EMAIL}    Email must contain specific domain name
${RESULT_TERMS-CONS}    You must accept the terms and conditions
*** Test Cases ***
Check validation FirastName
    [Documentation]    Test First
    Open Google ReactForm
   Input FirastName 
  Click Element Field
  Verify FirstName
    Close Browser

Check validation IDCard
    [Documentation]    Test IDCard
    Open Google ReactForm
   Input IDCard
  Click Element Field
  Verify IDCard
    Close Browser

Check validation Password
    [Documentation]    Test Password
    Open Google ReactForm
   Input Password
  Click Element Field
   Verify Password
    Close Browser

 Check validation PhoneNum
    [Documentation]    Test Phonenum
    Open Google ReactForm
   Input PhoneNum
  Click Element Field
   Verify PhoneNum
    Close Browser

 Check validation Email
    [Documentation]    Test email
    Open Google ReactForm
   Input Email
  Click Element Field
   Verify Email
    Close Browser      

*** Keywords ***
Open Google ReactForm
    Open Browser    http://localhost:5174/    ${BROWSER}
    Maximize Browser Window

Input FirastName
    Input Text    name=firstnameEng    ${INPUT_FirstName}    

Input IDCard
    Input Text    name=idCard    ${INPUT_IDCARD}

Input Password
    Input Text        name=password   ${INPUT_PASSWORD}

Input PhoneNum
    Input Text    name=mobile   ${INPUT_PHONENUM}

Input Email
    Input Text    name=email   ${INPUT_EMAIL}

Click Element Field
    Click Button    name=lastnameTha

Verify FirstName
    Wait Until Page Contains    ${RESULT_FirstName}
    Page Should Contain    ${RESULT_FirstName}

Verify IDCard
    Wait Until Page Contains    ${RESULT_IDCARD}
    Page Should Contain    ${RESULT_IDCARD}

Verify Password
    Wait Until Page Contains    ${RESULT_PASSWORD}
    Page Should Contain    ${RESULT_PASSWORD}

Verify PhoneNum
    Wait Until Page Contains    ${RESULT_PHONENUM}
    Page Should Contain   ${RESULT_PHONENUM}

Verify Email
    Wait Until Page Contains    ${RESULT_EMAIL}
    Page Should Contain    ${RESULT_EMAIL}





