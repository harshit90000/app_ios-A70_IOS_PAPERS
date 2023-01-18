//
//  ARRAY_StuMarks_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class ARRAY_StuMarks_ViewController: UIViewController {
    
    var arrstud = [Student]()
    
    @IBOutlet weak var searchtxt: UITextField!
    
    @IBOutlet weak var namelbl: UILabel!
    
    @IBOutlet weak var rollnolbl: UILabel!
    
    @IBOutlet weak var ioslbl: UILabel!
    
    @IBOutlet weak var islbl: UILabel!
    
    @IBOutlet weak var dslbl: UILabel!
    
    @IBOutlet weak var percentagelbl: UILabel!
    
    @IBAction func searchbtn(_ sender: Any) {
        var per=0
        var total=0
        for i in arrstud{
        if(searchtxt.text! == i.Sname){
            namelbl.text=i.Sname
            rollnolbl.text=i.Srollno
            ioslbl.text=String(i.Sios)
            islbl.text=String(i.Sis)
            dslbl.text=String(i.Sds)
            total=i.Sios+i.Sis+i.Sds
            per=total/3
            percentagelbl.text=String(per)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
