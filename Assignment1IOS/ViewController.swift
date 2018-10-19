//
//  ViewController.swift
//  Assignment1IOS
//
//  Created by Mohammed Patla on 2018-10-10.
//  Copyright © 2018 Mohammed Patla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
    
        print(hour)
    }


}

