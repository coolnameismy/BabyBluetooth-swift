![](https://camo.githubusercontent.com/18f5e8bab350bf7ec2ab267126bbfbf3a5b65337/687474703a2f2f696d616765732e6a756d70706f2e636f6d2f75706c6f6164732f42616279426c7565746f6f74685f6c6f676f2e706e67)

# BabyBluetooth-swift 介绍

:baby: [BabyBluetooth][BabyBluetooth] The easiest way to use Bluetooth (BLE )in ios,even bady can use. 简单易用的蓝牙库，基于CoreBluetooth的封装，并兼容ios和mac osx.

**Babybluetooth-swift** 是Babybluetooth的swift版本，由原作者：刘彦玮(玄彦) 开发和维护

## 此版本的重要说明：

**因为Babybluetooth的串行函数方法是用block实现的，对swift支持不好**，所以，目前的Babybluetooth-swift通过改在了Babybluetooth的方法调用，实现了对swift的兼容模式，并在计划在今后完全用swift实现Babybluetooth的全部功能


## 如何使用Babybluetooth

功能和详细的api介绍，请阅读[BabyBluetooth的主页][BabyBluetooth] ，有详细的demo说明和api介绍，版本更新记录，常见问题，蓝牙教程等内容

##  如何在swift中使用Babybluetooth

demo:可以参考babybluetoothSwiftProject路径下的工程

步骤1：把ClASSES/bridging-for-swift路径下的源代码拖入项目中

步骤2：建立bridging文件,在文件中引入Babybluetooth头文件

例如：
````
//建立文件 ：xxxx-Bridging-Header.h

//文件内容：
//
//  Use this file to import your target's public headers that you would like to expose to Swift.
#import "BabyBluetooth.h"

````

步骤3： 使用baby库，方法略... 参考[BabyBluetooth的主页][BabyBluetooth] 

##  其他说明

1：目前的Babybluetooth-swift 是基于Babybluetooth 0.7.0 改造
2：Babybluetooth-swift 和Babybluetooth 在目前的兼容版本上，只有BabyBluetooth.m文件做了改动.

##  后期计划和更新

-  1:支持swift pod
-  2:改成完全基于swift的实现



 











[BabyBluetooth]:https://github.com/coolnameismy/BabyBluetooth
