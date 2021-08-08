*** Settings ***
Library           RPA.Browser.Selenium

*** Keywords ***
Switch to new window when it is open
    [Arguments]    ${window_list_before}
    FOR    ${_}    IN RANGE    50
        ${window_list_now}=    Get Window Titles
        Exit For Loop If    len(${window_list_now})>len(${window_list_before})
        Sleep    0.1s
    END
    Switch Window    NEW

*** Tasks ***
Minimal task
    Log To Console    \nExample 03
    Open Available Browser    https://docs.robocorp.com
    ${window_list_before}=    Get Window Titles
    ${current_title}=    Get Title
    Log To Console    At Page: ${current_title}
    Click Element    //a[@href="https://forum.robocorp.com/"]    # LINK_THAT_OPENS_NEW_WINDOW
    Switch to new window when it is open    ${window_list_before}
    ${current_title}=    Get Title
    Log To Console    At Page: ${current_title}
    Log    Done.
