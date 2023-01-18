//
//  DivB_set1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//
//  1. Create a home view, which will allow user to login in app.
//  • User will need to input two values.
//  • Condition for successful login: First field should be one of the factors of number entered in second field. ( ex : 8 is factor of 64 )

import UIKit

class DivB_set1_ViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
        @IBOutlet weak var txt2: UITextField!
        @IBOutlet weak var lbl: UILabel!
        
        @IBAction func btnlogin(_ sender: UIButton) {
            let no1 = Int(txt1.text!)!
            let no2 = Int(txt2.text!)!
            
            if (no2%no1==0)
            {
                self.performSegue(withIdentifier: "colorsegue", sender: self)
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
