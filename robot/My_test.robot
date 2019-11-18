*** Settings ***
Documentation    Suite description
Library     OperatingSystem
Library     lib//csvLibrary.py

*** Variables ***
${text}  Some text

*** Keywords ***
Load Json
    [Arguments]     ${jsonPath}
    ${json}=        get file        ${jsonPath}
    [Return]        ${json}

*** Test Cases ***
My Variable Test Case
    log             ${text}

My Json Test Case
    ${json}=        Load Json       src//example.json
    log             ${json}

My CSV From Excel Test Case
    ${data}=        read csv file  src//dataCsv.csv
    log             ${data}

My CSV From Notepad Test Case
    ${data}=        read csv file  src//dataCsvFromNotepad.csv
    log             ${data}

CSV Second Version From Excel
    ${data}=        read csv file  src//dataExcelCsvCommas.csv
    log             ${data}
