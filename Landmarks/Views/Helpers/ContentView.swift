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
        case search
        case testpage
    }
    var body: some View {
        TabView(selection: $selection) {
            Discover()
                .tabItem {
                    Label("Discover", systemImage: "house" )
                }
                .tag(Tab.featured)
            SearchImage()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass.circle" )
                }
                .tag(Tab.search)
            loginPage()
                .tabItem {
               
                    Label("Me", systemImage: "person" )
                }
                .tag(Tab.list)
//            loginPage()
//                .tabItem {
//                    Label("测试", systemImage: "flame")
//                }
//                .tag(Tab.testpage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
