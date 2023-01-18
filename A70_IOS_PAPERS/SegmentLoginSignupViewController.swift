//
//  SegmentLoginSignupViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 09/10/22.
//

import UIKit

class SegmentLoginSignupViewController: UIViewController {
    
    @IBOutlet weak var Segment: UISegmentedControl!
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        if(Segment.selectedSegmentIndex==0)
        {
            Loginview.isHidden=false
            Signupview.isHidden=true
        }
        else if(Segment.selectedSegmentIndex==1)
        {
            Loginview.isHidden=true
            Signupview.isHidden=false
        }
        else{
            Loginview.isHidden=true
            Signupview.isHidden=false
        }
    }
    
    @IBOutlet weak var Loginview: UIView!
    @IBOutlet weak var Login_Username: UITextField!
    @IBOutlet weak var Login_Password: UITextField!
    @IBOutlet weak var login_Label: UILabel!
    @IBOutlet weak var Login_Label2: UILabel!
    
    @IBAction func LoginButton(_ sender: Any) {
        
        let Luname = Login_Password.text
        let Lpass = Login_Password.text
        
        if (Luname == "a" && Lpass == "a") {
            self.performSegue(withIdentifier: "Nextsegue", sender: self)
        }
        else {
            login_Label.text="invalid username or password"
        }
    }
    
    @IBAction func Login_SignupButton(_ sender: Any) {
        
    }
    
    
    @IBOutlet weak var Signupview: UIView!
    @IBOutlet weak var Signup_Entername: UITextField!
    @IBOutlet weak var Signup_Username: UITextField!
    @IBOutlet weak var Signup_password: UITextField!
    @IBOutlet weak var Signup_confirmpassword: UITextField!
    @IBOutlet weak var Signup_Label: UILabel!
    
    @IBAction func SignupButton(_ sender: Any) {
        
        let Sename = Signup_Entername.text
        let Suname = Signup_Username.text
        let Spass = Signup_password.text
        let Scpass = Signup_confirmpassword.text
        
        if (Sename == "a" && Suname == "a" && Spass == "a" && Scpass == Spass) {
            self.performSegue(withIdentifier: "Nextsegue", sender: self)
        }
        else {
            Signup_Label.text="invalid username or password"
        }
    }
    
    @IBOutlet weak var Switch: UISwitch!
    
    @IBAction func SwitchAction(_ sender: Any) {
        
        if(Switch.isOn)
        {
            Slider1.isEnabled = true
            Slider2.isEnabled = true
            Slider3.isEnabled = true
        }
        else
        {
            Slider1.isEnabled = false
            Slider2.isEnabled = false
            Slider3.isEnabled = false
        }
    }
    
    var SelectedColor:UIColor!
    
    @IBOutlet weak var Slider1: UISlider!
    
    @IBAction func Slider1Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha:1.0)
        
        SelectedColor = self.view.backgroundColor
    }
    
    @IBOutlet weak var Slider2: UISlider!
    
    @IBAction func Slider2Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha: 1.0)
        
        SelectedColor = self.view.backgroundColor
    }
    
    @IBOutlet weak var Slider3: UISlider!
    
    @IBAction func Slider3Action(_ sender: Any) {
        
        let redColor = Slider1.value
        let greenColor = Slider2.value
        let blueColor = Slider3.value
        
        self.view.backgroundColor = UIColor(red: CGFloat(redColor/255.0), green: CGFloat(greenColor/255.0), blue: CGFloat(blueColor/255.0), alpha: 1.0)
        
        SelectedColor = self.view.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var obj = segue.destination as! StepperSliderColorViewController
        obj.ColorSelected = SelectedColor
        obj.redValue = Slider1.value
        obj.greenValue = Slider2.value
        obj.blueValue = Slider3.value
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
