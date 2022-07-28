//
//  DelegateEmojiViewController.swift
//  transfer data
//
//  Created by Shien on 2022/7/28.
//

import UIKit

protocol DelegateEmojiViewControllerDelegate {
    func delegateEmojiViewController(_ controller: DelegateEmojiViewController, withText emoji: String)
}

class DelegateEmojiViewController: UIViewController {
    var delegate: DelegateEmojiViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func choose(_ sender: UIButton) {
        delegate.delegateEmojiViewController(self, withText: (sender.titleLabel?.text)!)
        navigationController?.popToRootViewController(animated: true)
    }
}
