//
//  ClosureEmojiViewController.swift
//  transfer data
//
//  Created by Shien on 2022/7/28.
//

import UIKit

class ClosureEmojiViewController: UIViewController {
    typealias SendEmoji = (String)->Void
    var sendEmoji: SendEmoji!
    var currentEmoji = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func choose(_ sender: UIButton) {
        sendEmoji((sender.titleLabel?.text)!)
        navigationController?.popToRootViewController(animated: true)
    }
}
