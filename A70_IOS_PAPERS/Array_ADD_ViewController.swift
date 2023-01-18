//
//  Array_ADD_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class Array_ADD_ViewController: UIViewController {
    
    var arrNums = [Int]()
    var count = 0
    
    @IBOutlet weak var countlabel: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func Addbtn(_ sender: Any) {
        
        arrNums.append(Int(textfield.text!)!)
        
        count = count+1
        countlabel.text=String(count)
        
        textfield.text=""
        
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        performSegue(withIdentifier: "addsegue", sender: self)
        
        print(count)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! Array_SEQUENCE_ViewController
        des.numarr2 = arrNums
        des.count = count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
