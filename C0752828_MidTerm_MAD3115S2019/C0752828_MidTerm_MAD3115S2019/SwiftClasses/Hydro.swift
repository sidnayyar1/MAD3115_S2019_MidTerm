//
//  Hydro.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import Foundation

class Hydro:Bill {
    var agency_Name:String
//    var agencyname:String {
//        get{
//            return agency_Name
//        }
//    }
    var unit_Consumed:Int?
//    var unitconsumed: Int? {
//        get{
//            return unit_Consumed
//        }
//    }
    
    init(bill_ID:Int,billDate:Date,billType:String,totalBillAmount:Float,agencyname:String,unitConsumed:Int) {
        self.agency_Name = agencyname
        self.unit_Consumed = unitConsumed
        super.init(bill_ID: bill_ID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
}
}
