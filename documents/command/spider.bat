@echo off
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
pause