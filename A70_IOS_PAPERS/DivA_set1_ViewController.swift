//
//  DivA_set1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//
//  1. Create a home view, which will allow user to login in app.
//    • User will need to input one value.
//    • Condition for successful login: If the entered number is prime number,
//      redirect user to home page .

import UIKit

class DivA_set1_ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
 
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func btnlogin(_ sender: UIButton) {
        
        let no1 = Int(txt1.text!)!
        
        var i=2
        var flag=""
        while(i<no1){
            print(i)

            if(no1%i==0){
                flag="False"
                break
            }
            else{
                flag="True"
            }
            i=i+1
        }
        
        if(flag=="True"){
            self.performSegue(withIdentifier: "calc1", sender: self)
        }
        else if(flag=="False"){
            lbl.text="Invalid login"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
