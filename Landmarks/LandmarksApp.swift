//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by zhenghui on 2021/7/5.
//

import SwiftUI

@main

struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
