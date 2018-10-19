//
//  ViewController.swift
//  Assignment1IOS
//
//  Created by Mohammed Patla on 2018-10-10.
//  Copyright © 2018 Mohammed Patla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var fromTextView: UITextField!
    @IBOutlet weak var toTextView: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    
        
        //print(hour)
    }

    //MARK: Funtions
    @IBAction func findRideButton(_ sender: Any) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        
        var baseFare = 2.5
        var chargePerKM = 0.81
        var serviceFee = 1.75
        var minimumFee = 4.64
        var totalPrice = 0.0
        
        if(hour <= 6 && hour >= 4)
        {
            print("in peak hourse")
            
            chargePerKM = chargePerKM + ((chargePerKM * 20) / 100)
            if(switchButton.isOn == true)
            {
                print("in a stright ryde")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                    print("sheridan ok-br /(totalPrice)")
                    
                }
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                
            }
            else {
                print("in NOT a direct ride")
                baseFare = baseFare - ((baseFare * 10) / 100)
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                }
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                
            }
        }
        else{
            
            print("in not peak hourse")
            if(switchButton.isOn == true)
            {
                print("in a stright ryde")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    print("sheridan ok-br /(totalPrice)")
                    
                }
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                
            }
            else {
                print("in NOT a stright ride")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                }
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                
            }
            
        }
        
    }
    
}

