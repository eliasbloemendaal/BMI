//
//  ViewController.swift
//  BMI
//
//  Created by elias bloemendaal on 12/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PressButtonRight: UIButton!
    @IBOutlet weak var PressButtonLeft: UIButton!
    @IBOutlet weak var FrontPageView: UIImageView!
    @IBOutlet weak var ScreenFatness: UILabel!
    
    @IBOutlet weak var CalculateButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonLeft(sender: AnyObject) {
    if self.FrontPageView.image == UIImage(named: "SFman"){
        self.FrontPageView.image = UIImage(named: "manFat")
        ScreenFatness.text = String(" >30% Obese ")
    }
    else if self.FrontPageView.image == UIImage(named: "manFat"){
        self.FrontPageView.image = UIImage(named: "manFull")
        ScreenFatness.text = String(" 25.0 - 29.9 ")
    }
    else if self.FrontPageView.image == UIImage(named: "manFull"){
        self.FrontPageView.image = UIImage(named: "manNormal")
        ScreenFatness.text = String(" 18.5 -24.9 ")
    }
    else if self.FrontPageView.image == UIImage(named: "manNormal"){
        self.FrontPageView.image = UIImage(named: "manSkinny")
        ScreenFatness.text = String(" <18.5 ")
    }
    else if self.FrontPageView.image == UIImage(named: "manSkinny"){
        self.FrontPageView.image = UIImage(named: "SFman")
        ScreenFatness.text = String(" Massive ")
    }
}
    @IBAction func ButtonRight(sender: AnyObject) {
        if self.FrontPageView.image == UIImage(named: "SFman"){
            self.FrontPageView.image = UIImage(named: "manSkinny")
            ScreenFatness.text = String(" <18.5 ")
        }
        else if self.FrontPageView.image == UIImage(named: "manSkinny"){
            self.FrontPageView.image = UIImage(named: "manNormal")
            ScreenFatness.text = String(" 18.5 -24.9 ")
        }
        else if self.FrontPageView.image == UIImage(named: "manNormal"){
            self.FrontPageView.image = UIImage(named: "manFull")
            ScreenFatness.text = String(" 25.0 - 29.9 ")
        }
        else if self.FrontPageView.image == UIImage(named: "manFull"){
            self.FrontPageView.image = UIImage(named: "manFat")
            ScreenFatness.text = String(" >30% Obese ")
        }
        else if self.FrontPageView.image == UIImage(named: "manFat"){
            self.FrontPageView.image = UIImage(named: "SFman")
            ScreenFatness.text = String(" Massive ")
        }
    }
    
}

