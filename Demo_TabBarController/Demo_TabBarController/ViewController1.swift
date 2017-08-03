//
//  ViewController1.swift
//  Demo_TabBarController
//
//  Created by Backman on 2017/7/31.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view1 did load")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        print("view1 did appear")
        self.tabBarItem.badgeValue = nil
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
