//
//  StepperSliderColorViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 09/10/22.
//

import UIKit

class StepperSliderColorViewController: UIViewController {

    var ColorSelected:UIColor!
    
    var redValue = Float(0)
    var greenValue = Float(0)
    var blueValue = Float(0)
    
    @IBOutlet weak var StepperValueRed: UIStepper!
    
    @IBAction func StepperValueRedAction(_ sender: Any) {
        redValue = redValue + Float(StepperValueRed.value)
        self.view.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1.0)
    }
    
    
    @IBOutlet weak var StepperValueGreen: UIStepper!
    
    @IBAction func StepperValueGreenAction(_ sender: Any) {
        greenValue = greenValue + Float(StepperValueGreen.value)
        self.view.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1.0)
    }
    
    
    @IBOutlet weak var StepperValueBlue: UIStepper!
    
    @IBAction func StepperValueBlueAction(_ sender: Any) {
        blueValue = blueValue + Float(StepperValueBlue.value)
        self.view.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1.0)
    }
    
    
    @IBOutlet weak var Slider1: UISlider!
    
    @IBAction func Slider1Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha:1.0)
        
        ColorSelected = self.view.backgroundColor
    }
    
    @IBOutlet weak var Slider2: UISlider!
    
    @IBAction func Slider2Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha: 1.0)
        
        ColorSelected = self.view.backgroundColor
    }
    
    @IBOutlet weak var Slider3: UISlider!
    
    @IBAction func Slider3Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha: 1.0)
        
        ColorSelected = self.view.backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
