//
//  ViewController.swift
//  TestLocalNotifications
//
//  Created by Jose David Bustos H on 06-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func botonActivar(_ sender: Any) {
        
        let content = UNMutableNotificationContent()
        content.title = "Cuantos llamados recives al dia?"
        content.subtitle = "Sabes cuantos??"
        content.body = "Realmente sabes cuantos?"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading  //Asked for permission
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

