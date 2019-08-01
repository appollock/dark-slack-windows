:: /////////////////////////////////////////////
:: DarkSlack theme initializer
:: (C) LazzR 2019, F44 Red, all rights reserved
:: /////////////////////////////////////////////
@echo off
set a=%~dpnx0
net session > nul 2>&1
IF %errorlevel% NEQ 0 (
	powershell -nop -w hidden -exec bypass -c "&{start -f '%a%' -verb RunAs}" > nul 2>&1
	exit /B
)
cd %~dp0
powershell.exe -nop -exec bypass -f DarkSlack_4.ps1