//
//  NotificationEmojiViewController.swift
//  transfer data
//
//  Created by Shien on 2022/7/28.
//

import UIKit
import UserNotifications

class NotificationName {
    static let notificationName = Notification.Name("emojiNotification")
}

class NotificationEmojiViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func choose(_ sender: UIButton) {
        NotificationCenter.default.post(name: NotificationName.notificationName , object: nil, userInfo: ["emoji":(sender.titleLabel?.text)!])
        navigationController?.popToRootViewController(animated: true)
    }
    
}
