//
//  DivA_set3_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  1. Create a home view, which will allow user to login in app.
//  • User will need to input three values.
//  • Condition for successful login: First value should be double of the second value and second value should be double of the third value ( ex : 5, 10, 20 )

import UIKit

class DivA_set3_ViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func btnlogin(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        let no3 = Int(txt3.text!)!
        
        if (no2==no1+no1 && no3==no2+no2)
        {
            self.performSegue(withIdentifier: "KBC", sender: self)
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
