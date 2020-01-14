//
//  ViewController.swift
//  CalculatorExample
//
//  Created by Amit Singh on 14/01/20.
//  Copyright © 2020 demo. All rights reserved.
//

import UIKit
import CalculatorKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFirstNumber: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnAddAction(_ sender: Any) {
        guard txtFirstNumber.text != "" && txtSecondNumber.text != "" else {
            return
        }
        
        lblResult.text = "\(calculator.add(firstNum: Int(txtFirstNumber.text ?? "0")!, secondNum: Int(txtSecondNumber.text ?? "0")!))"
    }
}

