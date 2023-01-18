//
//  DivB_set1_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. After successful login, App will allow user to choose the theme of app, themes can be different colors. (Theme means each and every view controller in app must have selected background color).


import UIKit

class DivB_set1_1_ViewController: UIViewController {
    
    @IBOutlet weak var txtname: UITextField!
    
    var color = ""
    
    @IBAction func btnyellow(_ sender: UIButton) {
        self.view.backgroundColor=UIColor.yellow
        color="yellow"
    }
    
    @IBAction func btngreen(_ sender: UIButton) {
        self.view.backgroundColor=UIColor.green
        color="green"
    }
    
    @IBAction func btnblue(_ sender: UIButton) {
        self.view.backgroundColor=UIColor.blue
        color="blue"
    }
    
    @IBAction func btnnext(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destvc = segue.destination as! B_1_1_ViewController
        destvc.strdata=txtname.text!
        destvc.colordata=color
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
