*** Settings ***
Variables         myvariables.py

*** Variables ***
${APP_X_URL}      http://urlfromrobot

*** Tasks ***
Minimal task
    Log To Console    \nExample 02
    Log To Console    ${LOAD_RESPONSE1}
    Log To Console    ${LOAD_RESPONSE2}
    Log To Console    ${LOAD_RESPONSE3}
    Log    Done.
