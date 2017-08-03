//
//  ViewController.swift
//  Kalc
//
//  Created by Lucas Bordini Ribeiro de Araujo on 8/2/17.
//  Copyright © 2017 Lucas Bordini Ribeiro de Araujo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmout: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var peopleNumber: UITextField!
    
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalPayment: UILabel!
    @IBOutlet weak var personPayment: UILabel!
    
   
    
    @IBAction func calculate(_ sender: Any) {
        result.billAmount = Double(billAmout.text!)!
        result.tip = Double(tipPercent.text!)!
        result.peopleNumber = Int(peopleNumber.text!)!
        result.calculate()
        
        write();
    }

     let result = KalcModel(billAmount: 0, tip: 0, peopleNumber: 0)
    
    
    func write(){
        tipAmount.text = "$" + String(format: "%.2f", result.tipAmount)
        totalPayment.text = "$" + String(format: "%.2f", result.totalPayment)
        personPayment.text = "$" + String(format: "%.2f", result.paymentPerson)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipAmount.text = ""
        totalPayment.text = ""
        personPayment.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

