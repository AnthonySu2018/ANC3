//
//  shutDownAllDevices.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/21.
//

import Foundation


func shutDownAllDevices(){
    
    let myTCPsender = TCPsender()
    let myUDPsender = UDPsender()
    
    
    // 最后需在米家App中关闭所有工控屏播放盒子

    print("LED屏电箱断电")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.6", remotePort: 5000, action: "00 00 00 00 00 06 01 05 08 02 FF 00")  //  LED屏电箱断电
    Thread.sleep(forTimeInterval: 0.5)
    print("机房时序电源关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 40004, action: "55 01 A5 00 00 A4")  //  机房时序电源关
    Thread.sleep(forTimeInterval: 0.5)
    print("T1灯光控制全关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 20001, action: "05 0F 00 00 00 10 02 00 00 D0 E0")  //  T1灯光控制全关
    Thread.sleep(forTimeInterval: 0.5)
    print("T2灯光控制器全关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 20001, action: "06 0F 00 00 00 10 02 00 00 C4 10")  //  T2灯光控制器全关
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器1路关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 01 00 00 9C 0A")  //  调光控制器1路关
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器2路关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 02 00 00 6C 0A")  //  调光控制器2路关
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器3路关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 03 00 00 3D CA")  //  调光控制器3路关
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器4路关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 04 00 00 8C 0B")  //  调光控制器4路关
    Thread.sleep(forTimeInterval: 0.5)
    print("序厅LED播放盒关")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 33 53 54 44 42 59 45 4E 44 ")   //  序厅LED播放盒关
    Thread.sleep(forTimeInterval: 0.5)
    print("投影关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.73", remotePort: 8000, action: "28 50 57 52 20 30 29")   //  投影关
    Thread.sleep(forTimeInterval: 0.5)
    print("Intel Vision LED播放盒关")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.34", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 34 53 54 44 42 59 45 4E 44")   //  Intel Vision LED播放盒关
    Thread.sleep(forTimeInterval: 0.5)
    print("CCG LED播放盒关")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.35", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 35 53 54 44 42 59 45 4E 44")   //  CCG LED播放盒关
    Thread.sleep(forTimeInterval: 0.5)
    print("NEX LED播放盒关")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.37", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 37 53 54 44 42 59 45 4E 44 ")   //  NEX LED播放盒关
    Thread.sleep(forTimeInterval: 0.5)
    print("汽车LED播放关")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.36", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 36 53 54 44 42 59 45 4E 44")   //  汽车LED播放关
    Thread.sleep(forTimeInterval: 0.5)
    print("智慧校园拼接屏关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.69", remotePort: 20001, action: "D5 11 11 10 00 AA")   //  智慧校园拼接屏关
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案工控屏1关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.61", remotePort: 8000, action: "DD FF 00 08 C1 15 00 00 01 AA AA DD BB CC")   //  会议解决方案工控屏1关
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案工控屏2关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.62", remotePort: 8000, action: "DD FF 00 08 C1 15 00 00 01 AA AA DD BB CC")   //  会议解决方案工控屏2关
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案全场智能平板关")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.74", remotePort: 8000, action: "DD FF 00 07 C1 31 00 00 01 01 F7 BB CC")   //  会议解决方案全场智能平板关






}
