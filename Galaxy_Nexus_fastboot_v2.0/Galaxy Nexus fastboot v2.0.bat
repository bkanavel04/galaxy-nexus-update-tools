echo off
title  Galaxy Nexusɵ��ϵ��
echo.
echo.     
echo.  by master33333
echo.
echo.
echo.                  ͬʱ��������+������-�Ϳ����������� ����fastboot���档
echo.
echo.                  
echo.   
echo.        ����ע�⣺ ѡ�������Ȼ���ֻ���Ļ��ѡyes���õ�Դ��ȷ�ϡ�
echo.     
echo.        ������飺 �������ֵ����������ɹ�
echo.
echo.
echo.   1 �������
echo.
echo.   2 �����ֻ�
echo.
echo.   3 �����ֻ�
echo.��
echo.   4 ROOT�ֻ�
echo.��
echo.   5 ˢ��recovery
echo.��
echo.   6 ˢ�����
echo.��
echo.   7 ˢ���ں�
echo.��
echo.   8 ˢ��BL
echo.��
echo.   9 ˢ��ϵͳupdate.zip
echo.��
echo.   10 ����bootloader
echo.
echo.��
echo.
SET /P Boot=������������ѡ��Ҫ���еĲ�����Ȼ��Enter����
if /I "%Boot%"=="1" fastboot-windows.exe devices
if /I "%Boot%"=="2" fastboot-windows.exe oem unlock
if /I "%Boot%"=="3" fastboot-windows.exe oem lock
if /I "%Boot%"=="4" fastboot-windows.exe boot boot.superboot.img

if /I "%Boot%"=="5" fastboot-windows.exe flash recovery recovery.img
if /I "%Boot%"=="6" fastboot-windows.exe flash radio radio.img 
if /I "%Boot%"=="7" fastboot-windows.exe boot boot.img

if /I "%Boot%"=="8" fastboot-windows.exe flash bootloader bootloader.img
if /I "%Boot%"=="9" fastboot-windows.exe -w update image.zip
if /I "%Boot%"=="10" fastboot-windows.exe reboot-bootloader
echo.
pause
echo. 
echo.
echo.
