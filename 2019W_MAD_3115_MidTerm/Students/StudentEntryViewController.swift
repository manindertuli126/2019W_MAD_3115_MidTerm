//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController {

    @IBOutlet weak var studIDTxt: UITextField!
    @IBOutlet weak var studNameTxt: UITextField!
    @IBOutlet weak var studEmailTxt: UITextField!
    
    @IBOutlet weak var studDBMarksTxt: UITextField!
    @IBOutlet weak var studJavaMarksTxt: UITextField!
    @IBOutlet weak var studSwiftMarksTxt: UITextField!
    @IBOutlet weak var studAndroidMarksTxt: UITextField!
    @IBOutlet weak var studiOSMarksTxt: UITextField!

    let studentDetails = Array<Student>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(moveToLogin))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func studGenderSeg(_ sender: Any) {
    }
    @objc func moveToLogin(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = sb.instantiateViewController(withIdentifier: "loginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    @IBAction func studSubmtiBtn(_ sender: Any) {
        if (studIDTxt.text?.lowercased().verifyID())!{
            
        }else{
            let alert = UIAlertController(title: "ID VALIDATION ALERT", message: "Student ID should contain first letter 'C' and need to be of length 10 or less" , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
