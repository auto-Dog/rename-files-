@echo off
set a=0
set /p str=����Ŀ���ļ���׺������������^:
setlocal EnableDelayedExpansion
dir /b > oriName.txt
dir /b .\*.%str% | find /c /v "" >> .\tmp.txt
set /p c=<.\tmp.txt
del /a /f /q .\tmp.txt
echo.
echo �����ļ�����ʽʾ����ʾ��-abcd-���ֱ��.spl����Ҫ���� ʾ��-abcd-  
echo.
set /p str2=����ͨ���ļ�������ʽ������β�����֣�^:
for %%i in (*.%str%) do (
set /a a+=1
if !a! gtr %c% (goto aa)
echo !a!
echo %%i 
ren "%%i" "%str2% !a!.%str%"
)
:aa
echo.
echo ���ȫ��������������!a!���ļ�
pause
