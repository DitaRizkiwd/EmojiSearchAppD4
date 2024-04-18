//
//  MainView.swift
//  EmojiSearch
//
//  Created by Dita Rizki W D on 18/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Emoji", systemImage: "ev.plug.dc.nacs")
                }
            
            Text("Map View")
                .tabItem {
                    Label("Map", systemImage: "binoculars")
                }
                .badge(4)
            
            Text("Setting View")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
//            Text("Setting View")
//                .tabItem {
//                    Label("Settings", systemImage: "gear")
//                }
//            Text("Setting View")
//                .tabItem {
//                    Label("Settings", systemImage: "gear")
//                }
//            Text("Setting View")
//                .tabItem {
//                    Label("Settings", systemImage: "gear")
//                }
        }
        .tint(.primary)
    }
}

#Preview {
    MainView()
}
