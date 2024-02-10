*** Settings ***
Library    JMeterLib

*** Variables ***
${PATH}    /Applications/JMETER-5.6.X/bin/jmeter.sh
${JMX}    /Users/carlos.barros/Desktop/JMETER-EXEMPLOS/jmeter-tests/test-plans/Calculadora_SOAP.jmx


*** Keywords ***
Test
    ${OUTPUT}    Set Variable    output.jtl
    Run Jmeter    ${PATH}    ${JMX}    ${OUTPUT}
    Analyse Jtl Convert   ${OUTPUT}

*** Test Cases ***
Executando a calculadora SOAP
    Test


