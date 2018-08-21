//
//  ViewController.swift
//  tippy
//
//  Created by Zhang, Jiaxin on 8/21/18.
//  Copyright © 2018 Jiaxin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel20: UILabel!
    @IBOutlet weak var totalLabel20: UILabel!
    @IBOutlet weak var tipLabel25: UILabel!
    @IBOutlet weak var totalLabel25: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        
        let tip18 = bill * 0.18
        let total18 = bill + tip18
        
        let tip20 = bill * 0.2
        let total20 = bill + tip20
        
        let tip25 = bill * 0.25
        let total25 = bill + tip25
        
        tipLabel.text = String(format: "$%.2f", tip18)
        totalLabel.text = String(format: "$%.2f", total18)
        
        tipLabel20.text = String(format: "$%.2f", tip20)
        totalLabel20.text = String(format: "$%.2f", total20)
        
        tipLabel25.text = String(format: "$%.2f", tip25)
        totalLabel25.text = String(format: "$%.2f", total25)
        
        
    }
}



