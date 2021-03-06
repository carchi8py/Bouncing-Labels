//
//  ViewController.swift
//  Bouding Labels
//
//  Created by Chris Archibald on 9/18/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //create ivars
    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!
    var slideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create the labels
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        slideLabel = UILabel()
        
        addLabels()
        
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTapGesture(tapGesture: UITapGestureRecognizer) {
        addLabels()
    }
    
    func addLabels() {
        myFirstLabel.text = "My first"
        myFirstLabel.font = UIFont.systemFontOfSize(36)
        myFirstLabel.sizeToFit()
        myFirstLabel.center = CGPoint(x: 100, y: 40)
        view.addSubview(myFirstLabel)
        
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.myFirstLabel.center = CGPoint(x: 100, y: 40+200)
            
            }, completion: nil)
        
        iPhoneLabel.text = "iPhone app"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(48)
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 200, y: 90)
        view.addSubview(iPhoneLabel)
        
        iPhoneLabel.alpha = 0
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.iPhoneLabel.center = CGPoint(x: 200, y: 90 + 200)
            self.iPhoneLabel.alpha = 1
            
            }, completion: nil)
        
        slideLabel.text = "Hello"
        slideLabel.font = UIFont.systemFontOfSize(36)
        slideLabel.sizeToFit()
        slideLabel.center = CGPoint(x: 800, y: 150)
        view.addSubview(slideLabel)
        
        UIView.animateWithDuration(1.5, delay: 1.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.slideLabel.center = CGPoint(x: 150, y: 150)
            
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

