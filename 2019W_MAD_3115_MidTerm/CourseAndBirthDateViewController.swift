//
//  CourseAndBirthDateViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CourseAndBirthDateViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var selectcourse: UIPickerView!
    var getdate = Date()
    var getCourse = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.selectcourse.delegate = self
        self.selectcourse.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    var course = ["MADT", "MODT", "CSD", "WADT"]

    @IBAction func courseSubmitBtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let studentVC = sb.instantiateViewController(withIdentifier: "sudentEntryVC") as! StudentEntryViewController
        studentVC.storeCourse = getCourse
        self.navigationController?.pushViewController(studentVC, animated: true)
    }
    
    @IBAction func date(_ sender: UIDatePicker) {
        self.getdate = sender.date
    }
    
    @IBAction func birthDateSubmitBtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let studentVC = sb.instantiateViewController(withIdentifier: "sudentEntryVC") as! StudentEntryViewController
        studentVC.storeBirthDate = getdate
        self.navigationController?.pushViewController(studentVC, animated: true)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.course.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.course[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.getCourse = course[pickerView.selectedRow(inComponent: 0)]
    }
    
    /*
     @IBAction func birthDateSubmitBtn(_ sender: Any) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
