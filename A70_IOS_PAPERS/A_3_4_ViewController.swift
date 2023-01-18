//
//  A_3_4_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

import UIKit

class A_3_4_ViewController: UIViewController {
    
    @IBOutlet weak var txtview: UITextView!
    @IBOutlet weak var lblans: UILabel!
    
    @IBAction func btna(_ sender: Any) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnb(_ sender: Any) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnc(_ sender: Any) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnd(_ sender: Any) {
        lblans.text="Congratulations, you won 8 lacs"
        self.performSegue(withIdentifier: "q5segue", sender: self)
    }
    
    @IBAction func btnnext(_ sender: Any) {
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
