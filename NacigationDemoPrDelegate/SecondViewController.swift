//
//  SecondViewController.swift
//  NacigationDemoPrDelegate
//
//  Created by Mac on 22/02/24.
//

import UIKit
protocol StudentDataPass{
    func passStudentData(student : StudendModel)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameTxtField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var studentBackDataPassDelegate : StudentDataPass?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func btnBack(_ sender: Any) {
        
        let extractedFirstName = self.firstNameTxtField.text
        let extractedMiddleName = self.middleNameTextField.text
        let extractedLastName = self.lastNameTextField.text
        
        let studentObject = StudendModel(firstName: extractedFirstName!, middleName: extractedMiddleName!, lastName: extractedLastName!)
        guard let studentDelegate = studentBackDataPassDelegate else { return}
        studentDelegate.passStudentData(student: studentObject)
        navigationController?.popViewController(animated: true)
    }
}
