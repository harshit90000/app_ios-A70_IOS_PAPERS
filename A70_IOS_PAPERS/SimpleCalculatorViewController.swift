//
//  SimpleCalculatorViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class SimpleCalculatorViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var lblans: UILabel!
    
    
    @IBAction func btadd(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        
        let ans:Int
        ans = no1 + no2
        lblans.text = String(ans)
        
//        OR
        
//        lblans.text = String(Int(txt1.text!)! + Int(txt2.text!)!)
    }
    
    @IBAction func btsub(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        let ans:Int
        ans = no1-no2
        lblans.text=String(ans)
        
//        OR
                
//        lblans.text = String(Int(txt1.text!)! - Int(txt2.text!)!)
    }
    
    @IBAction func btmul(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        let ans:Int
        ans = no1*no2
        lblans.text=String(ans)
        
//        OR
                
//        lblans.text = String(Int(txt1.text!)! * Int(txt2.text!)!)
    }
    
    @IBAction func btdiv(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        let ans:Int
        ans = no1/no2
        lblans.text=String(ans)
        
//        OR
                
//        lblans.text = String(Int(txt1.text!)! / Int(txt2.text!)!)
    }
    
    @IBAction func btper(_ sender: UIButton) {
        let no1 = Int(txt1.text!)!
        let no2 = Int(txt2.text!)!
        let ans:Int
        ans = no1%no2
        lblans.text=String(ans)
        
//        OR
                
//        lblans.text = String(Int(txt1.text!)! % Int(txt2.text!)!)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
