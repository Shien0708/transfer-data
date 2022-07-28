//
//  ViewController.swift
//  transfer data
//
//  Created by Shien on 2022/7/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(showEmoji(noti:)), name: NotificationName.notificationName, object: nil)
    }
    
    @objc func showEmoji(noti: Notification) {
        if let userInfo = noti.userInfo {
            if let emoji = userInfo["emoji"] as? String {
                emojiLabel.text = emoji
                print("has emoji")
            }
        }
    }
    
    @IBSegueAction func showDelegateView(_ coder: NSCoder) -> DelegateEmojiViewController? {
        let controller = DelegateEmojiViewController(coder: coder)
        controller?.delegate = self
        return controller
    }
    
    @IBSegueAction func showClosureView(_ coder: NSCoder) -> ClosureEmojiViewController? {
        let controller = ClosureEmojiViewController(coder: coder)
        controller?.sendEmoji = { emoji in
            self.emojiLabel.text = emoji
        }
        return controller
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        let controller = segue.source as! UnwindEmojiViewController
        emojiLabel.text = controller.currentEmoji
    }
}

extension ViewController: DelegateEmojiViewControllerDelegate {
    func delegateEmojiViewController(_ controller: DelegateEmojiViewController, withText emoji: String) {
        emojiLabel.text = emoji
    }
}
