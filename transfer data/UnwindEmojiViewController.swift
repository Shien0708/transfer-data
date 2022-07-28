//
//  UnwindEmojiViewController.swift
//  transfer data
//
//  Created by Shien on 2022/7/28.
//

import UIKit

class UnwindEmojiViewController: UIViewController {
    var currentEmoji = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func choose(_ sender: UIButton) {
        currentEmoji = (sender.titleLabel?.text!)!
    }
}
