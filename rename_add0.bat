@echo off
set a=0
set /p str=输入目标文件后缀名，不包含点（如jpg）^:
setlocal EnableDelayedExpansion
dir /b > oriName.txt
dir /b .\*.%str% | find /c /v "" >> .\tmp.txt
set /p c=<.\tmp.txt
del /a /f /q .\tmp.txt
echo.
echo 输入文件名格式 如：要全部命名成 手机照片-（编号）.jpg，需要输入 手机照片-
echo.
set /p str2=输入通用文件命名格式（不含尾部数字）^:
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
echo 完成全部重命名，共计!a!个文件
pause
