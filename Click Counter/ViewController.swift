//
//  ViewController.swift
//  Click Counter
//
//  Created by Phillip Hughes on 10/04/2015.
//  Copyright (c) 2015 Phillip Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Phil's second label
        var label2 = UILabel()
        label2.frame = CGRectMake(100,100,60,60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        //Increment Button
        var button = UIButton()
        button.frame = CGRectMake(150,250,100,100)
        button.setTitle("Increase", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents:
            UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var decbutton = UIButton()
        decbutton.frame = CGRectMake(150,200,100,100)
        decbutton.setTitle("Decrease", forState: .Normal)
        decbutton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decbutton)
        
        decbutton.addTarget(self, action: "decrementCount", forControlEvents:
            UIControlEvents.TouchUpInside)
    
    }
    
    //Increse Function
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.greenColor()


    }
    
    //Decrease Function
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.orangeColor()

        
     }



}

