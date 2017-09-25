//
//  ViewController.swift
//  Demo_Customize_UIView
//
//  Created by Backman on 2017/9/23.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customUiView: CustomUIView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customUiView.RedBar.addTarget(self, action: #selector(self.onRedBarChange), for: UIControlEvents.valueChanged)
        
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func onRedBarChange(){
        customUiView.ColorView.backgroundColor = UIColor(red: CGFloat(customUiView.RedBar.value/255.0), green: 0.0, blue: 0.0, alpha: 1)
        print("\(customUiView.RedBar.value)")
    
    }
    
    


}

