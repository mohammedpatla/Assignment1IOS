//
//  ViewController.swift
//  Assignment1IOS
//
//  Created by Mohammed Patla on 2018-10-10.
//  Copyright © 2018 Mohammed Patla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Varaibles for calaculation
    var baseFare = 2.5
    var chargePerKM = 0.81
    var serviceFee = 1.75
    var minimumFee = 4.64
    var totalPrice = 0.0
    var distanceCharged = 0.0
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
        //Getting the date
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        baseFare = 2.5
        
        //Branch for peak hours
        if(hour <= 6 && hour >= 4)
        {
            print("in peak hours")
            
            chargePerKM = chargePerKM + ((chargePerKM * 20) / 100)
            //subbranch for direct ride
            if(switchButton.isOn == true)
            {
                print("in a stright ryde")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    distanceCharged = 40.7 * chargePerKM
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                }
                else if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    distanceCharged = 4.8 * chargePerKM
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                    
                }
                    //Validation code
                else{
                    let alert = UIAlertController(title: "Error!", message: "You cannot leave the text box empty", preferredStyle: UIAlertController.Style.alert)
                    let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
                    {
                        (UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)
                    present(alert, animated: true)
                    {
                        () -> Void in
                    }

                }
                
            }
                //Pool ride subbranch
            else {
                baseFare = baseFare*0.9
                print("in NOT a direct ride")
                baseFare = baseFare - ((baseFare * 10) / 100)
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    distanceCharged = 40.7 * chargePerKM
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                }
                else if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    distanceCharged = 4.8 * chargePerKM
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                else{
                    let alert = UIAlertController(title: "Error!", message: "You cannot leave the text box empty", preferredStyle: UIAlertController.Style.alert)
                    let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
                    {
                        (UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)
                    present(alert, animated: true)
                    {
                        () -> Void in
                    }
                    
                }
                
            }
        }
            //Not peak hours branch
        else{
            
            print("in not peak hourse")
            if(switchButton.isOn == true)
            {
                print("in a stright ryde")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    distanceCharged = 40.7 * chargePerKM
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    print("sheridan ok-br /(totalPrice)")
                    
                }
                else if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    distanceCharged = 4.8 * chargePerKM
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                else{
                    let alert = UIAlertController(title: "Error!", message: "You cannot leave the text box empty", preferredStyle: UIAlertController.Style.alert)
                    let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
                    {
                        (UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)
                    present(alert, animated: true)
                    {
                        () -> Void in
                    }
                    
                }
                
            }
            else {
                baseFare = baseFare*0.9
                print("in NOT a stright ride")
                if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "Sheridan Brampton"){
                    distanceCharged = 40.7 * chargePerKM
                    totalPrice = (baseFare + 40.7 * chargePerKM + serviceFee)
                    
                }
                else if(fromTextView.text == "Sheridan Oakville" && toTextView.text == "The Boot Social"){
                    distanceCharged = 4.8 * chargePerKM
                    totalPrice = (baseFare + 4.8 * chargePerKM + serviceFee)
                }
                else{
                    let alert = UIAlertController(title: "Error!", message: "You cannot leave the text box empty", preferredStyle: UIAlertController.Style.alert)
                    let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
                    {
                        (UIAlertAction) -> Void in
                    }
                    alert.addAction(alertAction)
                    present(alert, animated: true)
                    {
                        () -> Void in
                    }
                    
                }
                
            }
            
        }
        
    }
    
    //Passing the data to the next screen
    //MARK: functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ryderConfirmScreen = segue.destination as! RydeConfirmedScreenController
        //Setting the variables for the next screen
        ryderConfirmScreen.baseFee = baseFare;
        ryderConfirmScreen.fromLoc = fromTextView.text!
        ryderConfirmScreen.toLoc = toTextView.text!
        ryderConfirmScreen.serviceFee = serviceFee
        ryderConfirmScreen.totalConfirmed = totalPrice
        ryderConfirmScreen.distanceCharged = distanceCharged
    }
    
}

