//
//  ViewController.swift
//  Demo_userInterface_unit
//
//  Created by Backman on 2017/8/21.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var testNumberField: UITextField!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testSliderBarLabel: UILabel!
    
    
    
    @IBOutlet weak var testSliderBar: UISlider!

   
    
    
    
    @IBAction func onSliderBarChanged(_ sender: UISlider) {
        
        testSliderBarLabel.text = "\(lroundf(sender.value))"
    }
    
    
    
    @IBAction func onTapGesture(_ sender: Any) {
        
        testTextField.resignFirstResponder()
        testNumberField.resignFirstResponder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testLabel.text = "UI test"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder()
    }

    
    
    
}

