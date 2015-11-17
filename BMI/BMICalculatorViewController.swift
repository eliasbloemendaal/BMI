//
//  BMICalculatorViewController.swift
//  BMI
//
//  Created by elias bloemendaal on 12/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class BMICalculatorViewController: UIViewController {

    var height : Double = 1.0
    var length : Double = 1.0
    
    @IBOutlet weak var ManOrWife: UISegmentedControl!
    @IBOutlet weak var HeigthText: UITextField!
    @IBOutlet weak var LengthText: UITextField!
    @IBOutlet weak var AllMenOrWomen: UIImageView!
    @IBOutlet weak var SingleMenOrWomen: UIImageView!
    @IBOutlet weak var BMiNumber: UILabel!
    @IBOutlet weak var BmiCalculateButton: UIButton!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func WhatSex(sender: AnyObject) {
        let index : Int = ManOrWife.selectedSegmentIndex
        
        if index == 0 {
            self.AllMenOrWomen.image = UIImage(named: "bmiw")
        }
        else {
            self.AllMenOrWomen.image = UIImage(named: "bmim")
        }
    }

    @IBAction func BmiFinalButton(sender: AnyObject) {
        
        if HeigthText.text == "" {
            BMiNumber.text = String("Fill you Heigth in!")
        }
        else if LengthText.text == "" {
            BMiNumber.text = String("Fill you Length in!")
        }
        else {
            length = (Double(LengthText.text!)!) / 100
            let BMI : Double = Double(HeigthText.text!)! / (length * length)
            BMiNumber.text = String(BMI)
            
            if self.AllMenOrWomen.image == UIImage(named: "bmim") {
                if BMI <= 18.5 {
                    self.SingleMenOrWomen.image = UIImage(named: "skinnym")
                    }
                else if 18.6 <= BMI && BMI <= 24.9 {
                    self.SingleMenOrWomen.image = UIImage(named: "normalm")
                    }
                else if 25.0 <= BMI && BMI <= 29.9 {
                    self.SingleMenOrWomen.image = UIImage(named: "fullm")
                    }
                else if 30.0 <= BMI {
                    self.SingleMenOrWomen.image = UIImage(named: "fatm")
                    }
                }
            else if self.AllMenOrWomen.image == UIImage(named: "bmiw") {
                if BMI <= 18.5 {
                    self.SingleMenOrWomen.image = UIImage(named: "skinnyw")
                    }
                else if 18.6 <= BMI && BMI <= 24.9 {
                    self.SingleMenOrWomen.image = UIImage(named: "normalw")
                    }
                else if 25.0 <= BMI && BMI <= 29.9 {
                    self.SingleMenOrWomen.image = UIImage(named: "fullw")
                    }
                else if 40.0 <= BMI {
                    self.SingleMenOrWomen.image = UIImage(named: "fatw")
                    }
            
                }
            
            }
       
        }
    
    @IBAction func DismissKeyboard(sender: AnyObject) {
        self.resignFirstResponder()
    }
    
    @IBAction func DismissKeyboardtwo(sender: AnyObject) {
        self.resignFirstResponder()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.destinationViewController as? BMIViewController) == nil {
            return
        }
        else{
        let DestinationViewController : BMIViewController = segue.destinationViewController as! BMIViewController
        DestinationViewController.LabelHeightText = HeigthText.text!
        DestinationViewController.LabelLengthText = LengthText.text!
        DestinationViewController.LabelBmiText = BMiNumber.text!
        }
    }
    

}
