@echo off
echo A:master    B:developer    C:bug    D:test
set /p bi=请选择要合并的分支：
set /p bo=请选择被合并的分支：
set main = master
set sub = developer
if %bi% == A set main=master
if %bi% == B set main=developer
if %bi% == C set main=bug
if %bi% == D set main=test
if %bo% == A set sub=master
if %bo% == B set sub=developer
if %bo% == C set sub=bug
if %bo% == D set sub=test
echo %main%
echo %sub%
