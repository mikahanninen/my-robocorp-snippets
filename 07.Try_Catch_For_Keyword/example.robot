*** Keywords ***
My Custom Keyword
    [Arguments]    ${value_in}
    IF    ${value_in}==1
        Fail
    END
    [Return]    ${${value_in}+1}

*** Task ***
Main task
    Log To Console    \nExample 07
    ${status}    ${result}=    Run Keyword and Ignore Error    My Custom Keyword    2
    Log To Console    Status:${status} Result:${result}
    ${status}    ${result}=    Run Keyword and Ignore Error    My Custom Keyword    1
    Log To Console    Status:${status} Result:${result}
