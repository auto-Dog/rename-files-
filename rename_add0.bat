@echo off
set a=0
set /p str=����Ŀ���ļ���׺�����������㣨��jpg��^:
setlocal EnableDelayedExpansion
dir /b > oriName.txt
dir /b .\*.%str% | find /c /v "" >> .\tmp.txt
set /p c=<.\tmp.txt
del /a /f /q .\tmp.txt
echo.
echo �����ļ�����ʽ �磺Ҫȫ�������� �ֻ���Ƭ-����ţ�.jpg����Ҫ���� �ֻ���Ƭ-
echo.
set /p str2=����ͨ���ļ�������ʽ������β�����֣�^:
for %%i in (*.%str%) do (
set /a a+=1
if !a! gtr %c% (goto aa)
echo %%i
set Num=000!a!
set Num=!Num:~-3!
echo !Num!
ren "%%i" "%str2%!Num!.%str%"
)
:aa
echo.
echo ���ȫ��������������!a!���ļ�
pause
