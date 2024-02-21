//
//  powerUpAllDevices.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/21.
//

import Foundation


func powerUpAllDevices(){
    
    // 需先在米家App中打开所有工控屏播放盒子

    let myTCPsender = TCPsender()
    let myUDPsender = UDPsender()
    
    print("LED屏电箱开电")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.6", remotePort: 5000, action: "00 00 00 00 00 06 01 05 08 01 FF 00")  //  LED屏电箱开电
    Thread.sleep(forTimeInterval: 0.5)
    print("机房时序电源开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 40004, action: "55 01 A4 00 00 A5")  //  机房时序电源开
    Thread.sleep(forTimeInterval: 0.5)
    print("T1灯光控制全开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 20001, action: "05 0F 00 00 00 10 02 FF FF D1 50")  //  T1灯光控制全开
    Thread.sleep(forTimeInterval: 0.5)
    print("T2灯光控制器全开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 20001, action: "06 0F 00 00 00 10 02 FF FF C5 A0")  //  T2灯光控制器全开
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器1路开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 01 FF 00 DD FA")  //  调光控制器1路开
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器2路开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 02 FF 00 2D FA")  //  调光控制器2路开
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器3路开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 03 FF 00 7C 3A")  //  调光控制器3路开
    Thread.sleep(forTimeInterval: 0.5)
    print("调光控制器4路开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.71", remotePort: 30003, action: "01 05 00 04 FF 00 CD FB")  //  调光控制器4路开
    Thread.sleep(forTimeInterval: 0.5)
    print("序厅LED播放盒开")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 33 50 57 52 4F 4E 45 4E 44")   //  序厅LED播放盒开
    Thread.sleep(forTimeInterval: 0.5)
    print("投影开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.73", remotePort: 8000, action: "28 50 57 52 20 31 29")   //  投影开
    Thread.sleep(forTimeInterval: 0.5)
    print("Intel Vision LED播放盒开")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.34", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 34 50 57 52 4F 4E 45 4E 44 ")   //  Intel Vision LED播放盒开
    Thread.sleep(forTimeInterval: 0.5)
    print("CCG LED播放盒开")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.35", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 35 50 57 52 4F 4E 45 4E 44")   //  CCG LED播放盒开
    Thread.sleep(forTimeInterval: 0.5)
    print("NEX LED播放盒开")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.37", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 37 50 57 52 4F 4E 45 4E 44")   //  NEX LED播放盒开
    Thread.sleep(forTimeInterval: 0.5)
    print("汽车LED播放开")
    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.36", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 36 50 57 52 4F 4E 45 4E 44")   //  汽车LED播放开
    Thread.sleep(forTimeInterval: 0.5)
    print("智慧校园拼接屏开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.69", remotePort: 20001, action: "D5 11 11 10 01 AA")   //  智慧校园拼接屏开
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案工控屏1开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.61", remotePort: 8000, action: "DD FF 00 08 C1 15 00 00 01 BB BB DD BB CC")   //  会议解决方案工控屏1开
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案工控屏2开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.62", remotePort: 8000, action: "DD FF 00 08 C1 15 00 00 01 BB BB DD BB CC")   //  会议解决方案工控屏2开
    Thread.sleep(forTimeInterval: 0.5)
    print("会议解决方案全场智能平板开")
    myTCPsender.sendTCPHEXStr(remoteHost: "172.18.0.74", remotePort: 8000, action: "DD FF 00 07 C1 31 00 00 01 00 F6 BB CC")   //  会议解决方案全场智能平板开


}
