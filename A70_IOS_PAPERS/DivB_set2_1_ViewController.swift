//
//  DivB_set2_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. App will allow user to create a new employee, there can be different input fields (name, no, dept, salary etc), Design the view with proper validations and success/failure messages. Input details of 3 employees & display minimum salary in next view controller.


import UIKit

class DivB_set2_1_ViewController: UIViewController {
    
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtno: UITextField!
    @IBOutlet weak var txtdept:UITextField!
    @IBOutlet weak var txtsal: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var txtname2: UITextField!
    @IBOutlet weak var txtno2: UITextField!
    @IBOutlet weak var txtdept2: UITextField!
    @IBOutlet weak var txtsal2: UITextField!
    
    @IBOutlet weak var txtname3: UITextField!
    @IBOutlet weak var txtno3: UITextField!
    @IBOutlet weak var txtdept3: UITextField!
    @IBOutlet weak var txtsal3: UITextField!
    
    @IBAction func btnnext(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var des = segue.destination as! B_2_1_ViewController
        
        var n1=Int(txtsal.text!)!
        var n2=Int(txtsal2.text!)!
        var n3=Int(txtsal3.text!)!
        
        if(n1<n2 && n1<n3)
        {
            des.name=txtname.text!
            des.dep=txtdept.text!
            des.number=txtno.text!
            des.salary=txtsal.text!
        }
        else if(n2<n3){
            des.name=txtname2.text!
            des.dep=txtdept2.text!
            des.number=txtno2.text!
            des.salary=txtsal2.text!
        }
        else{
            des.name=txtname3.text!
            des.dep=txtdept3.text!
            des.number=txtno3.text!
            des.salary=txtsal3.text!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
