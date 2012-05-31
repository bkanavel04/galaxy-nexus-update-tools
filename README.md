root - 系统管理员权限  
bootloader - 相当于电脑上的BIOS  
> bootloader is code that is executed before any Operating System starts to run.

recovery - 执行底层操作的界面，相当于纯DOS界面  
fastboot - 是比recovery更底层的操作界面  
> fastboot is a special diagnostic and engineering protocol that you can boot your Android device into.

解锁 - 就是解锁bootloader。解锁之后才可以刷ROM

### 分区解释：  
system：系统分区，我们刷ROM一般就是刷的这个分区  
userdata：数据分区  
cache：缓存分区  
recovery：恢复分区  
boot：存放内核和ramdisk的分区  
hboot: 这个是SPL所在的分区，很重要。也是fastboot所在的分区.刷错就真的变砖了.（所以一般不轻易刷这个）  
splash1：这个就是开机第一屏幕了  
radio：这个不是什么收音机，而是指无线通信模块，俗称基带（radio最初的意思是无线电通讯）

### 刷机步骤：  
1. 安装adb驱动（或者在机器进入fastboot模式后安装也行）  

2. 下载官方镜像，解压缩。成功解压缩后得到五个文件：  
flash-all.sh  
flash-base.sh  
radio-maguro-i9250xxla02.img  
bootloader-maguro-primela03.img  
image-yakju-imm76i.zip  

3. 下载Galaxy-Nexus-fastboot-v2.0.zip，解压缩。将官方固件copy到目录下重命名。规则如下：  
刷基带请将radio-xxx.img重命名为radio.img  
刷BL请将bootloader-xxx.img重命名为bootloader.img  
刷固件请将image-xxx.zip重命名为image.zip  

4. 关机进入fastboot模式（在关机状态下同时按“音量+”和“音量-”和“电源”三个键，等待机器发出轻微震动即可放开）  

5. 运行bat文件，选择2进行解锁（解锁是root和刷机的前提，音量键选择“YES”开头的，然后按电源键确定）  

6. 高兴么就root一下。然后开始刷机，基带和BL能不刷就不刷，防止变砖头。  

### 刷了官方的4.04后，不能root的问题  
可以到[http://forum.xda-developers.com/showthread.php?t=1400871](http://forum.xda-developers.com/showthread.php?t=1400871)下载最新的Galaxy Nexus ToolKit，然后按照指引做就可以了。  

### 注意事项：  
刷机有风险，操作需谨慎  
刷机前请备份好数据  
刷机前请确保手机电量在50%以上  
