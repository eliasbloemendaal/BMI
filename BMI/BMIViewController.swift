//
//  BMIViewController.swift
//  BMI
//
//  Created by elias bloemendaal on 13/11/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {
    
    @IBOutlet weak var HeightText: UILabel!
    @IBOutlet weak var LengthText: UILabel!
    @IBOutlet weak var BMIText: UILabel!
 
    
    var LabelHeightText = String()
    var LabelLengthText = String()
    var LabelBmiText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HeightText.text = LabelHeightText
        LengthText.text = LabelLengthText
        BMIText.text = LabelBmiText
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
