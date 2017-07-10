@echo off
echo A:C    B:D    C:E    D:F
set /p disk=请选择盘符：
set flag = false
if %disk%==A (
	set flag=true
	c:
)
if %disk%==B (
	set flag=true
	d:
)
if %disk%==C (
	set flag=true
	e:
)
if %disk%==D (
	set flag=true
	f:
)
echo %flag%
if %flag%==true (
	set /p dir=请输入项目地址：
	cd %dir%
	echo 当前目录%cd%
	echo GIT版本号
	git --version
	echo 切换到developer分支
	git checkout developer
	echo 从developer分支拉取最新代码
	git pull origin developer
	echo 切换到master分支
	git checkout master
	echo 合并developer分支到master
	git merge developer
	echo 提交本地master库到远程服务器
	git push -u origin master
)else (
	echo 请输入正确的选项！
)
pause