//
//  ViewController.swift
//  Demo_UIViewGesture
//
//  Created by Backman on 2017/8/21.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func testTapGesture(_ sender: Any) {
        
        
        
        
        
        
    }
    
    
    func randColor(notEqualTo currentColor:UIColor)-> UIColor{
        var res = currentColor
        let colors: [UIColor] = [ .red,.blue,
                                      .yellow,
                                      .orange,
                                      .green,
                                      .brown]

        
        repeat{
            let index = Int(arc4random_uniform(UInt32(colors.count)))
            res = colors[index]
        }while res.isEqual(currentColor)
        return res
    }

}

