//
//  ViewController.swift
//  Prework
//
//  Created by Cole Perez on 9/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var TipSlider: UISlider!
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func adjustTip(_ sender: Any) {
        let bill = Float(billAmountTextField.text!) ?? 0
        let tipval = TipSlider.value
        let tipPerc = round(tipval * 100)
        tipPercent.text = String(format:"%.1f%%",tipPerc)
        let tip = (tipPerc/100) * bill
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        let total = bill + tip
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}
