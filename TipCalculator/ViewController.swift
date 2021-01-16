//
//  ViewController.swift
//  TipCalculator
//
//  Created by Darsh Gondalia on 16/01/21.
//  Copyright © 2021 Darsh Gondalia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPrecentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPrecentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
        
    }
    
}

