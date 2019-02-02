//
//  ViewController.swift
//  CustomCategorizedLocalPushNotification
//
//  Created by Reza Khalafi on 2/2/19.
//  Copyright © 2019 Reza Khalafi. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UNUserNotificationCenterDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendLocalNotificationButtonClicked(_ sender: UIButton) {
        
        
        
        for i in 1...8 {
            let notificationContent = UNMutableNotificationContent()
            notificationContent.title = "Fly between dimensions"
            notificationContent.body = "congratulation! you can go to fifth dimension"
            notificationContent.sound = UNNotificationSound.default
            
            if i % 2 == 0 {
                notificationContent.threadIdentifier = "master"
                notificationContent.summaryArgument = "Go with your master"
            } else {
                notificationContent.threadIdentifier = "projection"
                notificationContent.summaryArgument = "Go with soul projection"
            }
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
            
            let request = UNNotificationRequest(identifier: String(i) + "seconds", content: notificationContent, trigger: trigger)
            let center = UNUserNotificationCenter.current()
            center.add(request) { (error: Error?) in
                if let theError = error {
                    print(theError)
                }
            }
        }
        
        
        
        
    }
    
    
}

