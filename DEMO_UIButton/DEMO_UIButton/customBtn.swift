//
//  customBtn.swift
//  DEMO_UIButton
//
//  Created by Backman on 2017/9/25.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class customBtn: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customize()
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customize()
        
    }
    
    
    func customize(){
        
        
        self.backgroundColor = UIColor.red
        self.setTitle("hello btn", for: UIControlState.normal)
        self.addTarget(self, action:#selector(pressMethod), for: UIControlEvents.touchUpInside)
        self.layer.borderWidth = 11.5
    
    
    }
    
    
    func pressMethod(){
        print("be touched!!")
    
    }
    
    
    
    
    
    
    
    
}
