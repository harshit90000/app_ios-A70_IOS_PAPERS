//
//  CustomCarNameColorViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class CustomCarNameColorViewController: UIViewController {

    @IBOutlet weak var txtcolor: UITextField!
    @IBOutlet weak var txtname: UITextField!
   
    let appdel = UIApplication.shared.delegate as! AppDelegate
    
    @IBAction func addbtn(_ sender: Any) {
        
        let obj = Car()
        obj.carname=txtname.text!
        obj.carcolor=txtcolor.text!
        
        appdel.arrcar.append(obj)
    }
    
    @IBAction func nextbtn(_ sender: UIButton) {
        performSegue(withIdentifier: "tablesegue", sender: self)
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
