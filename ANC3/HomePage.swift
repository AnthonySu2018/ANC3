//
//  HomePage.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/10.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        VStack{
            Spacer()
            Text("序厅大屏").font(.system(size:30))
            HStack{
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "172.18.0.33K0101END")
                }){Text("视频")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "172.18.0.33STOPP")
                }){Text("停止")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "172.18.0.33B0601END")
                }){Text("拍照")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
                
                
            }
        
            Spacer()
      
            Text("历史墙投影仪").font(.system(size:30))
            HStack{
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.11", remotePort: 50505, action: "172.18.0.11K0101END")
                }){Text("视频")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.11", remotePort: 50505, action: "172.18.0.11STOPP")
                }){Text("停止")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))

            }
        
            Spacer()
     
            Text("IntelVision").font(.system(size:30))
            HStack{
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.34", remotePort: 50505, action: "172.18.0.34K0101END")
                }){Text("视频")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
                
                
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPStr(remoteHost: "172.18.0.34", remotePort: 50505, action: "172.18.0.34STOPP")
                }){Text("停止")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))

            }
            Spacer()
            
            Text("Test").font(.system(size:30))
            HStack{
                Button(action:{
                    let myUDPsender = UDPsender()
                    myUDPsender.sendUDPHEXStr(remoteHost: "172.18.0.33", remotePort: 50505, action: "31 37 32 2E 31 38 2E 30 2E 33 33 4B 30 31 30 31 45 4E 44")
                }){Text("TestUDP")}
                    .foregroundColor(.white).background(.blue).cornerRadius(10)
                    .padding().frame(width:100).font(.system(size:25))
            }
        }
       
        

    }
}

#Preview {
    HomePage()
}
