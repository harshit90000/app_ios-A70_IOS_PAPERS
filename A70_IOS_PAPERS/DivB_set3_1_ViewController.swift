//
//  DivB_set3_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. Create a result calculation app, which will allow user to enter marks of three theory subjects and two practical subjects. Passing criteria for theory subject is 40% and practical subject is 50%. If student gets more than 60% in all practical subject then for one of the theory subjects passing criteria becomes 25%.
//  Display the avg and pass/fail status in next view controller.

import UIKit

class DivB_set3_1_ViewController: UIViewController {
    
    @IBOutlet weak var th1: UITextField!
    @IBOutlet weak var th2: UITextField!
    @IBOutlet weak var th3: UITextField!
    @IBOutlet weak var pr1: UITextField!
    @IBOutlet weak var pr2: UITextField!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var sts: UILabel!
    @IBAction func btnn(_ sender: Any) {
        var thh1=Int(th1.text!)!
        var thh2=Int(th2.text!)!
        var thh3=Int(th3.text!)!
        var prr1=Int(pr1.text!)!
        var prr2=Int(pr2.text!)!
        var resth=0
        var respr=0
        
        resth=(thh1+thh2+thh3)/3
        respr=(prr1+prr2)/2
        if(resth>40 && respr>=50)
        {
            if(prr1>60 && prr2>60){
                if(thh1<40 && thh1>25){
                lbl.text=String((resth+respr)/2)
                sts.text="pass"
                }
                else if(thh2>25 && thh2<40)
                {
                    lbl.text=String((resth+respr)/2)
                    sts.text="pass"
                }
                else if(thh3>25 && thh3<40){
                    lbl.text=String((resth+respr)/2)
                    sts.text="pass"
                }
                
            }
        }
        else
        {
            lbl.text=String((resth+respr)/2)
            sts.text="fail"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
