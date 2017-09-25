//
//  ViewController.swift
//  DEMO_UIButton
//
//  Created by Backman on 2017/9/25.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

extension customBtn{

    func setCornerRound(){
        self.layer.cornerRadius = 10

    
    
    }


}



class ViewController: UIViewController {

    @IBOutlet weak var customBtn: customBtn!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

