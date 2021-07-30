//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by zhenghui on 2021/7/29.
//

import SwiftUI

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
