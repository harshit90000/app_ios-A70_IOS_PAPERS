//
//  ARRAY_Student_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class ARRAY_Student_ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var rollno: UITextField!
    @IBOutlet weak var iosmarks: UITextField!
    @IBOutlet weak var ismarks: UITextField!
    @IBOutlet weak var dsmarks: UITextField!
    
    
    var arrstudent = [Student]()
    
    @IBAction func savebtn(_ sender: Any) {
        
        var obj = Student()
        
        obj.Sname = name.text!
        obj.Srollno = rollno.text!
        obj.Sios = Int(iosmarks.text!)!
        obj.Sis = Int(ismarks.text!)!
        obj.Sds = Int(dsmarks.text!)!
        
        arrstudent.append(obj)
        
    }

    @IBAction func nextbtn(_ sender: Any) {
        performSegue(withIdentifier: "secsegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var des = segue.destination as! ARRAY_StuMarks_ViewController
        des.arrstud = arrstudent
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  

}
