//
//  ViewController.swift
//  babybluetoothSwiftProject
//
//  Created by xuanyan.lyw on 16/5/7.
//  Copyright © 2016年 Liuyanwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //初始化
    let baby = BabyBluetooth.shareBabyBluetooth();
    
    //这个测试模拟蓝牙外设的代码见：https://github.com/coolnameismy/BabyBluetooth/tree/master/Test/BabyTestStub
    let testPeripleralName = "BabyBluetoothTestStub";
    let testPeripleralUUIDString = "FD9C47C0-B6A8-2D91-BD7D-C91810654EE8";

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置
        baby.setFilterOnDiscoverPeripherals { (name, adv, RSSi) -> Bool in
            //找到测试机器，并连接
            //这个测试模拟蓝牙外设的代码见：https://github.com/coolnameismy/BabyBluetooth/tree/master/Test/BabyTestStub
            if let name = adv["kCBAdvDataLocalName"] as? String {
                if name == self.testPeripleralName {
                  return true;
                }
            }
            return false;
        }
        
        baby.setFilterOnConnectToPeripherals { (name, adv, RSSI) -> Bool in
            if let name = adv["kCBAdvDataLocalName"] as? String {
                if name == self.testPeripleralName {
                    return true;
                }
            }
            return false;
        }
        
        baby.setBlockOnDiscoverToPeripherals { (centralManager, peripheral, adv, RSSI) in
            NSLog("%@", centralManager);
        };
        
        baby.setBlockOnConnected { (centralManager, peripheral) in
            NSLog("connect on :\(peripheral.name)");
        };
        
        baby.setBlockOnDiscoverServices { (p, error) in
            NSLog("discover services:\(p.services)");
        }
        
        baby.setBlockOnDiscoverCharacteristics { (p, s, err) in
            NSLog("discover characteristics:\(s.characteristics) on uuid \(s.UUID.UUIDString)");
        }
        
        baby.scanForPeripherals().enjoy();
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

