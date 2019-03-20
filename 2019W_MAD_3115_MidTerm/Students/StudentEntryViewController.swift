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
    
    @IBOutlet weak var studMarksSubmitBtn: UIButton!
    
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
