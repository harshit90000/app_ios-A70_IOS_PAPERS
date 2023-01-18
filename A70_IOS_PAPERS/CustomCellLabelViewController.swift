//
//  CustomCellLabelViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 15/10/22.
//

import UIKit

class CustomCellLabelViewController: UIViewController {

    @IBOutlet weak var labelCar: UILabel!
    
    @IBOutlet weak var LabelColor: UILabel!
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        
        labelCar.text = appdel.arrcar[appdel.selectrow].carname
        LabelColor.text = appdel.arrcar[appdel.selectrow].carcolor
        
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
