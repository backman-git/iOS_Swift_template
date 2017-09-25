//
//  CustomUIView.swift
//  Demo_Customize_UIView
//
//  Created by Backman on 2017/9/23.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit


class CustomUIView: UIView {

    
    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var RedBar: UISlider!
    @IBOutlet var contentView: UIView!
    
    func loadViewFromNib(){
        
        Bundle.main.loadNibNamed("CustomUiView", owner: self, options:nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask=[UIViewAutoresizing.flexibleWidth,UIViewAutoresizing.flexibleHeight]
        
    
        RedBar.backgroundColor = UIColor.red
        RedBar.isContinuous=true
        
        
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        loadViewFromNib()
        
               
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }

    
    
    
    
}
