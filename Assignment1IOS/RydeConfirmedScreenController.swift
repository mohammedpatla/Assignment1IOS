//
//  RydeConfirmedScreenController.swift
//  Assignment1IOS
//
//  Created by Kenneth Uyabeme on 10/19/18.
//  Copyright © 2018 Mohammed Patla. All rights reserved.
//

import UIKit

class RydeConfirmedScreenController: UIViewController {
    //MARK: Variables
    var fromLoc = ""
    var toLoc = ""
    var baseFee = 0.0
    var distanceCharged = 0.0
    var serviceFee = 0.0
    var totalConfirmed = 0.0
    
    //MARK: OUtlets
    @IBOutlet weak var fromLocationTextView: UILabel!
    
    @IBOutlet weak var toLocatioTextView: UILabel!
    @IBOutlet weak var baseFeeTextView: UILabel!
    @IBOutlet weak var distanceChargedTextView: UILabel!
    @IBOutlet weak var serviceFeeTextView: UILabel!
    @IBOutlet weak var totalTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toLocatioTextView.text = toLoc
        fromLocationTextView.text = fromLoc
        baseFeeTextView.text = String(baseFee)
        distanceChargedTextView.text = String(distanceCharged)
        serviceFeeTextView.text = String(serviceFee)
        totalTextView.text = String(totalConfirmed)
        
        // Do any additional setup after loading the view.
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
