@echo off
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
pause