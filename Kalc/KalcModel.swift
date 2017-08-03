//
//  KalcModel.swift
//  Kalc
//
//  Created by Lucas Bordini Ribeiro de Araujo on 8/2/17.
//  Copyright © 2017 Lucas Bordini Ribeiro de Araujo. All rights reserved.
//

import Foundation

class KalcModel {
    var billAmount: Double
    var tip: Double
    var peopleNumber: Int
    
    var tipAmount: Double = 0
    var totalPayment: Double = 0
    var paymentPerson: Double = 0
    
    init (billAmount: Double, tip: Double, peopleNumber: Int) {
        self.billAmount = billAmount
        self.tip = tip
        self.peopleNumber = peopleNumber
        
        calculate()
    }
    
    func calculate(){
        tipAmount = (tip / 100) * billAmount
        totalPayment = tipAmount + billAmount
        paymentPerson = totalPayment / Double(peopleNumber)
    }
    
}
