//
//  ShutdownPage.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/19.
//

import SwiftUI

struct ShutdownPage: View {
    var body: some View {
        Button(action:{
            shutDownAllDevices()
        }){
            VStack{
                Text("一键关闭所有设备").font(.system(size:40))
                Image(systemName:"bolt.slash.circle.fill").font(.system(size:300)).frame(width:300,height:300)
            }

        }
    }
}

#Preview {
    ShutdownPage()
}
