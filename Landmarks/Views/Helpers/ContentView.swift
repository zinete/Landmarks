//
//  ContentView.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import SwiftUI


/**
 https://developer.apple.com/tutorials/swiftui/handling-user-input
 
 
 Step 7

 Switch back to LandmarkList.swift and turn on the live preview to verify that everything is working properly.
 */
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
