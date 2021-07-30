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
        
        let mainWindow = WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
        mainWindow
        
        //只在MacOS生效
        #if os(macOS)
        mainWindow
            .commands{
                LandmarkCommands()
            }
        #endif
        
        
        //只在 watchOs生效
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
