//
//  TableTableViewController.swift
//  Demo_TableViewController
//
//  Created by Backman on 2017/8/10.
//  Copyright © 2017年 Backman. All rights reserved.
//

import UIKit
class TableTableViewController: UITableViewController {
    var imageDict:[String:UIImage?] = [:];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDict = self.loadImage()
    }
    
    func loadImage()-> [String:UIImage?]{
        
        var imageList:[String:UIImage?] = [String:UIImage?]()
        let imgNameList:[String] = ["cheese.png","orange.png","brocoli.png","tomato.png","apple.png"]
        for fName in imgNameList {
            let img:UIImage? = UIImage(named: fName )
            let fNameAry = fName.characters.split(separator: ".")
            imageList[String(fNameAry[0])] = img
            
            
        }
        return imageList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageDict.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        let keyAry = Array(imageDict.keys)
        cell.fruitImage.image = imageDict[keyAry[indexPath.row]]!
        cell.fruitLabel.text = keyAry[indexPath.row]

        return cell
    }
    

    
}
