*** Settings ***
Library           RPA.HTTP
Library           RPA.RobotLogListener

*** Variables ***
${SUPERSECRET}    supersecret

*** Tasks ***
Minimal task
    Register Protected Keywords    RPA.HTTP.POST
    POST    url=https://httpbin.org/post?key=${SUPERSECRET}
    Log    Done.
