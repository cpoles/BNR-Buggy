//
//  ViewController.swift
//  Buggy
//
//  Created by Carlos Poles on 25/11/17.
//  Copyright © 2017 Carlos Poles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Action Methods
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Called buttonTapped(_:)")
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
        
        badMethod()
    }
    
    func badMethod() {
        let array = NSMutableArray()
        
        for i in 0..<10 {
            array.insert(i, at: i)
        }
        
        // Go one step too far emptying the array (range changed)
        for _ in 0..<10 {
            array.removeObject(at: 0)
        }
    }
    

}

