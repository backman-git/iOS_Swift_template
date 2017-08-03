//
//  TabBarViewController.swift
//  Demo_TabBarController
//
//  Created by Backman on 2017/7/31.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("tabViewController did load")
        
        var nValue:Int = 0
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true){ (a) in
            nValue+=1
            for i in self.tabBar.items!{
                i.badgeValue = String(nValue)
                i.badgeColor = UIColor.brown
                
            }
        
        }
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("tabViewController did appear")
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
