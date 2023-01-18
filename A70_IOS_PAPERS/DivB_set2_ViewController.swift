//
//  DivB_set2_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  1. Create a home view, which will allow user to login in app.
//  • User will need to input two values.
//  • Condition for successful login: First field should be multiple of five and second filed should be multiple of ten. Sum of both the fields should be greater than 100. (Ex: 50 + 100 > 100)

import UIKit

class DivB_set2_ViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func btnlogin(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        
        if ((no1+no2)>100)
        {
            self.performSegue(withIdentifier: "empsegue", sender: self)
        }
        else{
            lbl.text="invalid number"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
