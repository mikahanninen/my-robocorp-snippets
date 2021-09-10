*** Settings ***
Library           RPA.HTTP
Library           RPA.RobotLogListener
Resource          variables.resource

*** Variables ***
${SUPERSECRET}    supersecret

*** Tasks ***
Minimal task
    Log To Console  Shared Variable 1: ${SHARED_VARIABLE_1}
    Log    Done.
