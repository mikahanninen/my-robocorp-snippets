*** Settings ***
Library           RPA.HTTP

*** Variables ***
${DISCORD_HOOK}    https://discord.com/api/
${WEBHOOK_ID}     <WEBHOOK_ID>
${mydict}         aaa_path=...    bbb_path=...    id=..

*** Keywords ***
Post data with local variable
    [Documentation]    Post JSON data using local variable
    ${mydata}=    Create Dictionary    aaa_path=...    bbb_path=...    id=...
    Create Session    mysession    localhost
    Post Request    mysession    /    json=${mydata}

*** Keywords ***
Post data with variable from variables section
    [Documentation]    Post JSON data using local variable
    Create Session    mysession    localhost
    Post Request    mysession    /    json=${mydict}

*** Tasks ***
Minimal task
    Log To Console    \nExample 01
    &{data}=    Create Dictionary    content=Well Hello!    username=Spidey Bot
    POST    ${DISCORD_HOOK}/webhooks/${WEBHOOK_ID}    json=${data}.
