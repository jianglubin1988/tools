@echo off
echo A:C    B:D    C:E    D:F
set /p disk=��ѡ���̷���
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
	set /p dir=��������Ŀ��ַ��
	cd %dir%
	echo ��ǰĿ¼%cd%
	echo GIT�汾��
	git --version
	echo �л���developer��֧
	git checkout developer
	echo ��developer��֧��ȡ���´���
	git pull origin developer
	echo �л���master��֧
	git checkout master
	echo �ϲ�developer��֧��master
	git merge developer
	echo �ύ����master�⵽Զ�̷�����
	git push -u origin master
)else (
	echo ��������ȷ��ѡ�
)
pause