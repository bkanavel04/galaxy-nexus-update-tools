echo off
title  Galaxy Nexus傻瓜系列
echo.
echo.     
echo.  by master33333
echo.
echo.
echo.                  同时按下音量+、音量-和开机键开机。 进入fastboot界面。
echo.
echo.                  
echo.   
echo.        解锁注意： 选择解锁，然后手机屏幕，选yes，用电源键确认。
echo.     
echo.        驱动检查： 如果有数值反馈即代表成功
echo.
echo.
echo.   1 检查驱动
echo.
echo.   2 解锁手机
echo.
echo.   3 加锁手机
echo.　
echo.   4 ROOT手机
echo.　
echo.   5 刷入recovery
echo.　
echo.   6 刷入基带
echo.　
echo.   7 刷入内核
echo.　
echo.   8 刷入BL
echo.　
echo.   9 刷入系统update.zip
echo.　
echo.   10 重启bootloader
echo.
echo.　
echo.
SET /P Boot=　　　　　请选择要进行的操作，然后Enter键：
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
