//
//  DivA_set1_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. After successful authentication, App will show mathematical calculator with one text field, which will allow user to perform different arithmetic operations.

import UIKit

class DivA_set1_1_ViewController: UIViewController {
    
    
    @IBOutlet weak var lblinput: UILabel!
    
    var oper = ""
    var no1 = 0
    var no2 = 0
    var ans = 0
    
    @IBAction func btn0(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"0"
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"1"
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"2"
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"3"
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"4"
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"5"
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"6"
    }
    
    @IBAction func btn7(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"7"
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"8"
    }
    
    
    @IBAction func btn9(_ sender: UIButton) {
        lblinput.text=lblinput.text!+"9"
    }
    
    @IBAction func btndot(_ sender: UIButton){
        lblinput.text=lblinput.text!+"."
    }
    
    @IBAction func btnadd(_ sender: UIButton) {
        no1 = Int(lblinput.text!)!
        oper="+"
        lblinput.text=""
    }
    
    @IBAction func btnsub(_ sender: UIButton) {
        no1 = Int(lblinput.text!)!
        oper = "-"
        lblinput.text=""
    }
    
    @IBAction func btnmul(_ sender: UIButton) {
        no1 = Int(lblinput.text!)!
        oper = "*"
        lblinput.text=""
    }
    
    @IBAction func btndiv(_ sender: UIButton) {
        no1 = Int(lblinput.text!)!
        oper = "/"
        lblinput.text=""
    }
    @IBAction func btnper(_ sender: UIButton) {
        no1 = Int(lblinput.text!)!
        oper="%"
        lblinput.text=""
    }
    
    @IBAction func btnequal(_ sender: UIButton) {
        no2 = Int(lblinput.text!)!
        switch oper {
        case "+":
            ans = no1+no2
            lblinput.text = String(ans)
            
        case "-":
            ans=no1-no2
            lblinput.text = String(ans)
            
        case "*":
            ans = no1*no2
            lblinput.text = String(ans)
            
        case "/":
            ans=no1/no2
            lblinput.text = String(ans)
        case "%":
            ans=no1%no2
            lblinput.text = String(ans)
        default:
            lblinput.text="ERROR"
        }
        
    }
    
    @IBAction func btnclear(_ sender: UIButton) {
        lblinput.text=""
    }

    @IBAction func btnNext(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
