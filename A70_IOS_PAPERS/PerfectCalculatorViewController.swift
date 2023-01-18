//
//  PerfectCalculatorViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 04/10/22.
//

import UIKit

class PerfectCalculatorViewController: UIViewController {

    
    @IBOutlet weak var calculatorWorking: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var working:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func clearAll(){
        working = ""
        calculatorWorking.text = ""
        calculatorResults.text = ""
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
   
    @IBAction func backTap(_ sender: Any) {
        
    }
    
    func addWorkings(value:String){
        working = working + value
        calculatorWorking.text = working
    }

    @IBAction func percentage(_ sender: Any) {
        addWorkings(value: "%")
    }
    
    @IBAction func division(_ sender: Any) {
        addWorkings(value: "/")
    }
    
    @IBAction func number7(_ sender: Any) {
        addWorkings(value: "7")
    }
    
    @IBAction func number8(_ sender: Any) {
        addWorkings(value: "8")
    }
    
    @IBAction func number9(_ sender: Any) {
        addWorkings(value: "9")
    }
    
    @IBAction func multi(_ sender: Any) {
        addWorkings(value: "*")
    }
    
    @IBAction func number4(_ sender: Any) {
        addWorkings(value: "4")
    }
    
    @IBAction func number5(_ sender: Any) {
        addWorkings(value: "5")
    }
    
    @IBAction func number6(_ sender: Any) {
        addWorkings(value: "6")
    }
    
    @IBAction func sub(_ sender: Any) {
        addWorkings(value: "-")
    }
    
    @IBAction func number3(_ sender: Any) {
        addWorkings(value: "3")
    }
    
    @IBAction func number2(_ sender: Any) {
        addWorkings(value: "2")
    }
    
    @IBAction func number1(_ sender: Any) {
        addWorkings(value: "1")
    }
    
    @IBAction func plus(_ sender: Any) {
        addWorkings(value: "+")
    }
   
    @IBAction func number0(_ sender: Any) {
        addWorkings(value: "0")
    }
    
    @IBAction func dot(_ sender: Any) {
        addWorkings(value: ".")
    }
    
    @IBAction func equal(_ sender: Any) {
        let expression = NSExpression (format: working)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
        
    }
    
    func formatResult(result:Double) -> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String (format: "%.0f", result)
        }
        else
        {
            return String (format: "%.2f", result)
        }
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
    }
}
