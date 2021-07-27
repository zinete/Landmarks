//
//  ContentView.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab  = .featured
    //enum 枚举
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("精选", systemImage: "star" )
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("列表", systemImage: "list.bullet" )
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
