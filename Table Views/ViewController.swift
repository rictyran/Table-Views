//
//  ViewController.swift
//  Table Views
//
//  Created by Richard Tyran on 2/11/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    var cellContent = ["Ric", "Lisa", "Cate", "Lucy"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

