//
//  StuCoViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class StuCoViewController: UIViewController {
    
    @IBOutlet weak var sname: UITextField!
    @IBOutlet weak var scompany: UITextField!
    
    
    var arrstud = [StudentCompany]()
    
    @IBAction func insertbtn(_ sender: Any) {
        
        var obj = StudentCompany()
        
        obj.name = sname.text!
        obj.company = scompany.text!
        arrstud.append(obj)
        
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        performSegue(withIdentifier: "insertsegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! StuCoTableViewController
        des.arrstud = arrstud
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
