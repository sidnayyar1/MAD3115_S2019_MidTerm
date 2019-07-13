//
//  Bill.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import Foundation
class Bill{


    var billId: Int
    var bill_Date: Date
    var bill_Type: String
    var total_Bill_Amount: Float
    
    //computing totalbill
    
    var totalbill:Float
    {
        let totalb:Float = 0.0
        return totalb
    }

    init(bill_ID:Int,billDate:Date,billType:String,totalBillAmount:Float) {

        self.billId = bill_ID
        self.bill_Date = billDate
        self.bill_Type = billType
        self.total_Bill_Amount = totalBillAmount
    }
   

}
