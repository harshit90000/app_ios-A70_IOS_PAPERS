//
//  Array_SEARCH_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class Array_SEARCH_ViewController: UIViewController {
    
    var arrnum3 = [Int]()
    
    @IBOutlet weak var searchfield: UITextField!
    
    
    @IBOutlet weak var countlable: UILabel!
    
    
    @IBAction func searchbtn(_ sender: Any) {
        
        var count=0
        for i in arrnum3{
            if i>Int(searchfield.text!)! {
                count = count+1
            }
        }
        
        countlable.text = String(count)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
