//
//  DivA_set3_1_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/09/22.
//

//  2. Create a simple KBC game, which will display 5 static questions and possible answers. (Timer won’t be there). If all the 5 questions have right answer, prize money will be 10 lakhs. If 4 questions have right answer, prize money will be 9 lakhs and so on.


import UIKit

class DivA_set3_1_ViewController: UIViewController {
    
    @IBOutlet weak var txtview: UITextView!
    @IBOutlet weak var lblans: UILabel!
    
    @IBAction func btna(_ sender: UIButton) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnb(_ sender: Any) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnc(_ sender: Any) {
        lblans.text="Wrong Answer"
    }
    
    @IBAction func btnd(_ sender: Any) {
        lblans.text="Congratulations, you won 2 lacs"
        self.performSegue(withIdentifier: "q2segue", sender: self)
    }
    
    @IBAction func btnnext(_ sender: UIButton) {
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
