//
//  B_1_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

import UIKit

class B_1_1_ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    var strdata=""
    var colordata=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.text = strdata
        
        if colordata=="yellow" {
            self.view.backgroundColor=UIColor.yellow
        }
        else if colordata=="blue" {
            self.view.backgroundColor=UIColor.blue
        }
        else if colordata=="green" {
            self.view.backgroundColor=UIColor.green
        }
        else {
            self.view.backgroundColor=UIColor.white
        }
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destvc = segue.destination as! B_1_2_ViewController
        destvc.colordata=colordata
    }

}
