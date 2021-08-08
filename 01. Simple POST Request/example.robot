*** Settings ***
Library           RPA.HTTP

*** Variables ***
${DISCORD_HOOK}    https://discord.com/api/
${WEBHOOK_ID}     <WEBHOOK_ID>

*** Tasks ***
Minimal task
    &{data}=    Create Dictionary    content=Well Hello!    username=Spidey Bot
    POST    ${DISCORD_HOOK}/webhooks/${WEBHOOK_ID}    json=${data}
