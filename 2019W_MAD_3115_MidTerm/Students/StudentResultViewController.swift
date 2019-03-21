//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var percentrr: UILabel!
    var totalMarks : Float!
    var percentage : Float!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func percent(_ sender: Any) {
        percentrr.text = String(self.percentage)
    }
    @IBAction func showResult(_ sender: UIButton) {
        Result.text = String(self.totalMarks)
        
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
