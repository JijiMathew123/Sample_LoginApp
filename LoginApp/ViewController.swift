//
//  ViewController.swift
//  LoginApp
//
//  Created by Apple on 02/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brownView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var topContainer: UIView!
    @IBOutlet weak var innerTopContainer: UIView!
    @IBOutlet weak var termsAndConditionsView: UIView!
    
    @IBOutlet weak var loginButtonView: UIView!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoginButton()
    
    }
func setupLoginButton()
    {
        loginButton.layer.cornerRadius = 5.0
        // i am from Documents
        print("Hai")
    }
    func setupTextField(){
        userName.text = "Jiji"
    }
}

