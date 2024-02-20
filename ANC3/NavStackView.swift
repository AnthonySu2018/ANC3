//
//  NavStackView.swift
//  ANC3
//
//  Created by AnthonySu on 2024/2/10.
//

import SwiftUI

struct NavStackView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            
            HomePage().tabItem {
                Image(systemName: "house.fill")
            }.tag(0)
            
            PowerupPage().tabItem{
                Image(systemName: "bolt.fill")
            }.tag(1)
            
            ShutdownPage().tabItem{
                Image(systemName: "bolt.slash")
            }.tag(2)
            
            SettingPage().tabItem{
                Image(systemName: "gearshape.fill")
            }.tag(3)
            
            
            
            /*
            LivePage().tabItem{
                Image(systemName: "play.rectangle")
            }.tag(1)

            */
            //ContactPage().tabItem{
                //Image(systemName: "person.crop.circle.badge.plus")
            //}.tag(3)
        }
    }
}

#Preview {
    NavStackView()
}
