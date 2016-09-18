//
//  ViewController.swift
//  Is It Prime
//
//  Created by Kevin Bui on 2/14/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var primeTextField: UITextField!
    
        @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func primeButton(sender: UIButton) {
        
        if let number = Int(primeTextField.text!) {
        
        var isPrime = true
        
        if number == 1 {
            
            isPrime = false
            
        }
        
        if number != 2 && number != 1 {
            
            
            for var i = 2; i < number; i++ {
                
                if number % i == 0 {
                    
                    isPrime = false
                }
                
            }
            
        }
        
        if isPrime {
            
            resultLabel.text = "\(number) is prime!"
        } else {
            
            resultLabel.text = "\(number) is not prime!"
        }
        } else {
            
            resultLabel.text = "Please Enter A Whole Number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

