@echo off

:: usage: %0 pattern content
:: the script to add special content to files specified automatically.
:: �˽ű�����������ָ���ļ�׷���ض�������


set pattern=%1%
set content=%2%

if "%pattern%"=="" (
goto runwrong
) else if "%content%"=="" (
goto runwrong
)else (

::echo usage: %0% pattern content. two parameter expected.
cd .

:: cmd �µ� for ѭ����ʹ��    
for  /f "delims=" %%i in ('dir /b %pattern%') do echo %content% >> %%i 
pause

goto end
)

:runwrong
echo usage: %0% pattern content
pause

:end
@echo on