//
//  B_2_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 16/09/22.
//

import UIKit

class B_2_1_ViewController: UIViewController {
    
    @IBOutlet weak var dept: UILabel!
    @IBOutlet weak var sal: UILabel!
    @IBOutlet weak var num: UILabel!
    @IBOutlet weak var uname: UILabel!
    
    var name=""
    var salary=""
    var number=""
    var dep=""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        uname.text=name
        sal.text=salary
        num.text=number
        dept.text=dep

        // Do any additional setup after loading the view.
    }
    
}
