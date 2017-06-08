@echo off
echo %cd%
set /p branch= please input branch name:
echo %branch%
if not %branch% == "master"(
	echo git merge origin master
	git merge origin master
)
echo git pull from origin %branch%
git pull origin %branch%
set /p filename= please input filename:
echo add %filename%
git add %filename%
echo commit %filename%
git commit -m "commit file %filename%"

echo push origin %branch%
git push -u origin %branch%

echo if branch no equal master ,do merge
if not %branch% == "master" (
	git checkout master
	git merge %branch%
)