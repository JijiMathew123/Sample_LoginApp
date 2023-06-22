//
//  ViewController.swift
//  LoginApp
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
        userName.addTarget(self, action: #selector(self.enableLoginButton), for: .editingChanged)
        password.addTarget(self, action: #selector(self.enableLoginButton), for: .editingChanged)
        setupLoginButton()
    
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        NetworkService.shared.login(username: userName.text!, password: password.text!) { success in
            if(success)
            {
                self.goToHomePage()
            }
            else{
                print(" Please check the username and pwd")
            }
        }
        
    }
    func goToHomePage(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        present(controller, animated: true, completion: nil)
    }
    
    func setupLoginButton()
    {
        loginButton.layer.cornerRadius = 5.0
    }
    
func setupTextField(){
        userName.text = "Jiji"
    }
    
@objc func enableLoginButton(){
        loginButton.isEnabled = userName.text != "" && password.text != ""
    }
    
}

