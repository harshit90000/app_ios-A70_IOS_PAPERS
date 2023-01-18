//
//  DivA_set2_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. AfterSuccessfullogin:
//    • User will need to enter a number
//    • Check whether the number is prime number or not.
//    • Check whether the number is Armstrong or not.

import UIKit

class DivA_set2_1_ViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    @IBAction func btnPRIME(_ sender: UIButton) {
            
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
                lbl1.text = "PRIME NUMBER"
            }
            else if(flag=="False"){
                lbl1.text = "NOT PRIME NUMBER"
            }
       
    }
    
    @IBAction func btnARMSTRONG(_ sender: UIButton) {
        
        var number = Int(txt2.text!)!
                var sum:Int = 0
                var rem:Int = 0
                var count:Int=0
                var num = Int(number)
                var num2 = Int(number)
                while(num > 0){
                    count = count+1
                    num/=10
                }
            
                while(number>0){
                    rem = number % 10
                    sum = sum + Int(pow(Double(rem), Double(count)))
                    number/=10
                    
                }
              
                if(num2==sum){
                    lbl2.text = "ARMSTRONG NUMBER"
                }
                else{
                    lbl2.text = "NOT ARMSTRONG NUMBER"
                }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
