
::cd scripts
::python lectura_de_archivos.py
cls
@echo off

set LOGSPATH=.\logs
mkdir %LOGSPATH%

cls
echo ############################################################
echo ##                                                        ##
echo ##  Ejecucion de Scripts para la Automatizacion de        ##
echo ##  formularios                                           ##
echo ##                                                        ##
echo ##  Espere por favor...                                   ##
echo ##                                                        ##
echo ############################################################

echo Ejecutando scripts de Automatizacion contratacion
echo exit | sqlplus CEPAL_OWN/CEPAL_OWN@XE @output\scriptt.sql >>%LOGSPATH%\script-logs.sql
pause