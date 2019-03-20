//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LoginUsernameTxt: UITextField!
    @IBOutlet weak var LoginPasswordTxt: UITextField!
    @IBOutlet weak var LoginRememberMeBtn: UISwitch!
    var saveUserData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func LoginSubmitBtn(_ sender: Any) {
        if LoginUsernameTxt.text == "admin" && LoginPasswordTxt.text == "admin@123"{
            
            
            
            if LoginRememberMeBtn.isOn{
                saveUserData.set(LoginUsernameTxt.text, forKey: "username")
                saveUserData.set(LoginPasswordTxt.text, forKey: "password")
            }else{
                saveUserData.removeObject(forKey: "username")
                saveUserData.removeObject(forKey: "password")
            }
        }else{
        let alert = UIAlertController(title: "VALIDATION ALERT", message: "Incorrect username or Password. Please verify and Try again!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: true)
        }
    }
    
}

