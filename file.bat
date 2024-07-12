:: simple base64 decode
@echo off
setlocal enabledelayedexpansion
title Base64 Decode  ~  @Themida
color 0B
set "enc=THEMIDA.file"
set "dec=decoded_themida.bat"
if not exist "%enc%" (
    echo  [~] Required File: "%enc%" has not been found.
    pause >nul
    exit /b
)
echo  [~] Decoding File: %enc% to %dec% . . .
set "encoded_content="
for /f "usebackq delims=" %%a in ("%enc%") do (
    set "encoded_content=!encoded_content!%%a"
)
certutil -decode "%enc%" "%dec%" >nul 2>&1
echo File %dec% created.
endlocal
