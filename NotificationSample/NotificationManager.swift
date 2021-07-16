//
//  NotificationManager.swift
//  NotificationSample
//
//  Created by Yusuke Hasegawa on 2021/07/16.
//

import Foundation
import UserNotifications

class NotificationManager {
    
    static let shared = NotificationManager()
    
    private var center: UNUserNotificationCenter {
        return .current()
    }
    
}

extension NotificationManager {
    
    func requestAuthorization() {
        center.requestAuthorization(options: [.alert, .sound, .badge, .provisional]) { granted, error in
            if let error = error {
                debugPrint(error)
            } else {
                debugPrint("granted : \(granted)")
            }
        }
    }
    
    func scheduleNotification() {
        
        let content = UNMutableNotificationContent()
        content.title = "Provisional Authorization"
        content.subtitle = "subtitle"
        content.body = "body"
        
        //after 10 seconds
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 10, repeats: false)
        
        let request = UNNotificationRequest.init(identifier: "id", content: content, trigger: trigger)
        
        center.add(request) { error in
            if let error = error {
                debugPrint(error)
            }
        }
        
    }
    
}
