//
//  ViewController.swift
//  NacigationDemoPrDelegate
//
//  Created by Mac on 22/02/24.
//

import UIKit

class ViewController: UIViewController,StudentDataPass {
    
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var middleNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var secondViewController : SecondViewController = SecondViewController()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func btnForward(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.studentBackDataPassDelegate = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    func passStudentData(student: StudendModel) {
        self.firstNameLabel.text = student.firstName
        self.middleNameLabel.text = student.middleName
        self.lastNameLabel.text = student.lastName
     }
    

}

