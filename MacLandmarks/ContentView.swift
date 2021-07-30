//
//  ContentView.swift
//  MacLandmarks
//
//  Created by zhenghui on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
        .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
