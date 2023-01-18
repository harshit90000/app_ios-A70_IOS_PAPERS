//
//  B_1_2_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class B_1_2_ViewController: UIViewController {
    
    var colordata=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    

}
