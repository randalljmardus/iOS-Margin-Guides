//
//  ViewController.swift
//  iOS Margin Guides
//
//  Created by Randall Mardus on 2/23/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let box = UIView()
        box.backgroundColor = UIColor.redColor()
        box.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(box)
        
        box.widthAnchor.constraintEqualToConstant(200).active = true
        box.heightAnchor.constraintEqualToConstant(100).active = true
        box.leadingAnchor.constraintEqualToAnchor(view.layoutMarginsGuide.leadingAnchor).active = true
        box.topAnchor.constraintEqualToAnchor(view.layoutMarginsGuide.topAnchor).active = true
        
    
    let blueBox = UIView()
        blueBox.backgroundColor = UIColor.blueColor()
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueBox)
        
        blueBox.widthAnchor.constraintEqualToConstant(100).active = true
        blueBox.heightAnchor.constraintEqualToConstant(50).active = true
        blueBox.leadingAnchor.constraintEqualToAnchor(box.layoutMarginsGuide.leadingAnchor).active = true
        
        print("Box layoutMargins:", box.layoutMargins)
        
        blueBox.bottomAnchor.constraintEqualToAnchor(box.layoutMarginsGuide.bottomAnchor).active = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

