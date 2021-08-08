*** Settings ***
Library           RPA.Excel.Files
Library           RPA.Tables
Library           Collections
Library           OperatingSystem
Library           Extras

*** Keywords ***
Map Column Names
    [Arguments]    ${data}
    Trim Empty Rows    ${data}
    ${rows}    ${columns}=    Get table dimensions    ${data}
    Log To Console    rows: ${rows}
    Log To Console    cols: ${columns}
    Log To Console    ${data.columns}
    ${columns}=    Create Dictionary
    FOR    ${index}    ${column}    IN ENUMERATE    @{data.columns}
        Set To Dictionary    ${columns}    ${column}=${index+1}
    END
    Set Global Variable    ${DATA_COLUMNS}    ${columns}

*** Keywords ***
Change Cell Value
    [Arguments]    ${row_number}    ${column_name}    ${new_value}
    Set Cell Value    ${${row_number}+1}    ${DATA_COLUMNS}[${column_name}]    ${new_value}
    Save Workbook

*** Tasks ***
Minimal task
    [Setup]    Open Workbook    ${CURDIR}${/}test excel.xlsx
    Log To Console    \nExample 04
    ${sheet}=    Read Worksheet    header=True
    ${data}=    Create Table    ${sheet}
    Map Column Names    ${data}
    Log To Console    ${DATA_COLUMNS}
    Print Table To Console    ${data}
    Change Cell Value    2    reason    ${EMPTY}
    Change Cell Value    3    reason    ${EMPTY}
    Change Cell Value    4    reason    Wrong credentials
    Change Cell Value    24    reason    ${EMPTY}
    [Teardown]    Close Workbook
