//
//  DivA_set2_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  1. Createahomeview,whichwillallowusertologininapp(Staticlogin)


import UIKit

class DivA_set2_ViewController: UIViewController {
    
    @IBOutlet weak var txtuname: UITextField!
        @IBOutlet weak var txtpw: UITextField!
        @IBOutlet weak var txtlabel: UILabel!
        
        @IBAction func btnlogin(_ sender: Any) {
            let uname = txtuname.text
            let pw = txtpw.text
            
            if (uname=="abc" && pw=="123") {
                self.performSegue(withIdentifier: "primearmsegue", sender: self)
            }
            else{
                txtlabel.text="invalid username or password"
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
