//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Apple on 21/06/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    let userName = NetworkService.shared.userData
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "Welcom \(userName?.name)"
    }
}
