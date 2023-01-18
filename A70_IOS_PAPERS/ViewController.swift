//
//  ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    
    @IBOutlet weak var txt2: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBAction func btnlogin(_ sender: UIButton) {
        let uname = txt1.text
        let pw = txt2.text
        
        if (uname=="a" && pw=="a") {
            self.performSegue(withIdentifier: "seta1", sender: self)
        }
        else if(uname=="b" && pw=="b")
        {
            self.performSegue(withIdentifier: "seta2", sender: self)
        }
        else if(uname=="c" && pw=="c")
        {
            self.performSegue(withIdentifier: "seta3", sender: self)
        }
        else if(uname=="d" && pw=="d")
        {
            self.performSegue(withIdentifier: "setb1", sender: self)
        }
        else if(uname=="e" && pw=="e")
        {
            self.performSegue(withIdentifier: "setb2", sender: self)
        }
        else if(uname=="f" && pw=="f")
        {
            self.performSegue(withIdentifier: "setb3", sender: self)
        }
        else if(uname=="g" && pw=="g")
        {
            self.performSegue(withIdentifier: "Arraysegue", sender: self)
        }
        else if(uname=="h" && pw=="h")
        {
            self.performSegue(withIdentifier: "StuArrsegue", sender: self)
        }
        else if(uname=="i" && pw=="i")
        {
            self.performSegue(withIdentifier: "StuCosegue", sender: self)
        }
        else if(uname=="j" && pw=="j")
        {
            self.performSegue(withIdentifier: "CusCellsegue", sender: self)
        }
        else{
            lbl.text="invalid username or password"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

