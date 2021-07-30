//
//  NotificationController.swift
//  WatchLandmarks Extension
//
//  Created by zhenghui on 2021/7/29.
//

import WatchKit
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {

    var landmark: Landmark?
    var title: String?
    var message: String?
    let landmarkIndexKey = "landmarkIndex"
    
    override var body: NotificationView {
        return NotificationView(
            title: title,
            message: message,
            landmark: landmark
        )
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        //  当手表视图控制器不再可见时调用此方法
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        /**
         // 当需要呈现通知时调用此方法。
         // 如果您使用动态通知接口，则实现它。
         // 尽快填充您的动态通知界面。
         */
        let modelData = ModelData()
        let notificationData = notification.request.content.userInfo as? [String: Any]
        let aps = notificationData?["aps"] as? [String: Any]
        
        let alert = aps?["alert"] as? [String: Any]
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
    }
}
