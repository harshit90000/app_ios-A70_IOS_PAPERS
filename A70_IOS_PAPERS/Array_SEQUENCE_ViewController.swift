//
//  Array_SEQUENCE_ViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class Array_SEQUENCE_ViewController: UIViewController {
    
    @IBOutlet weak var outputlab: UILabel!
    
    var arrIndex=0
    var count = 0
    var numarr2 = [Int]()
    var sortarr = [Int]()
    
    @IBOutlet weak var errorlable: UILabel!
    
    @IBAction func firstbtn(_ sender: Any) {
        arrIndex=0
        outputlab.text = String(sortarr[arrIndex])
        nextbtn1.isHidden=false
        previous.isHidden=true
    }
    
    @IBOutlet weak var previous: UIButton!
    @IBAction func previousbtn(_ sender: Any) {
        if arrIndex==1{
            arrIndex=arrIndex-1
            outputlab.text = String(sortarr[arrIndex])
            previous.isHidden=true
        }
        else{
            arrIndex=arrIndex-1
            outputlab.text = String(sortarr[arrIndex])
        }
            nextbtn1.isHidden=false
    }
    
    
    @IBOutlet weak var nextbtn1: UIButton!
    @IBAction func nextbtn(_ sender: Any) {
        if arrIndex==count-1 {
            nextbtn1.isHidden=true
        }
        else{
        arrIndex=arrIndex+1
        outputlab.text = String(sortarr[arrIndex])
        }
        previous.isHidden=false
    }
    
    @IBAction func lastbtn(_ sender: Any) {
        arrIndex=count-1
        outputlab.text = String(sortarr[arrIndex])
        previous.isHidden=false
        nextbtn1.isHidden=true

    }
    
    
    @IBAction func nextscreenbtn(_ sender: Any) {
        performSegue(withIdentifier: "Seqsegue", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        sortarr = numarr2.sorted()
        outputlab.text = String(sortarr[0])
        previous.isHidden=true
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! Array_SEARCH_ViewController
        des.arrnum3 = sortarr
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
