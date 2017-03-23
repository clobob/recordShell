@echo off

:: usage: %0 pattern content
:: the script to add special content to files specified automatically.
:: 此脚本用于批量向指定文件追加特定的内容


set pattern=%1%
set content=%2%

if "%pattern%"=="" (
goto runwrong
) else if "%content%"=="" (
goto runwrong
)else (

::echo usage: %0% pattern content. two parameter expected.
cd .

:: cmd 下的 for 循环的使用    
for  /f "delims=" %%i in ('dir /b %pattern%') do echo %content% >> %%i 
pause

goto end
)

:runwrong
echo usage: %0% pattern content
pause

:end
@echo on