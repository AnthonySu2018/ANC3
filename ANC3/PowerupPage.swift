//
//  PowerupPage.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/19.
//

import SwiftUI

struct PowerupPage: View {
    var body: some View {
        
        
        Button(action:{
            powerUpAllDevices()
        }){
            VStack{
                Text("一键开启所有设备").font(.system(size:40))
                Image(systemName:"bolt.circle").font(.system(size:300)).frame(width:300,height:300)
            }

        }
    }
}

#Preview {
    PowerupPage()
}
