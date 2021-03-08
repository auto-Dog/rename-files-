@echo off
set a=0
set /p str=输入目标文件后缀名，不包含点^:
setlocal EnableDelayedExpansion
dir /b > oriName.txt
dir /b .\*.%str% | find /c /v "" >> .\tmp.txt
set /p c=<.\tmp.txt
del /a /f /q .\tmp.txt
echo.
echo 输入文件名格式示例：示例-abcd-数字编号.spl，需要输入 示例-abcd-  
echo.
set /p str2=输入通用文件命名格式（不含尾部数字）^:
for %%i in (*.%str%) do (
set /a a+=1
if !a! gtr %c% (goto aa)
echo !a!
echo %%i 
ren "%%i" "%str2% !a!.%str%"
)
:aa
echo.
echo 完成全部重命名，共计!a!个文件
pause
