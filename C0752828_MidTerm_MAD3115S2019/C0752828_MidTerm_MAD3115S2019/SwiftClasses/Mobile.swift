//
//  Mobile.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import Foundation
class Mobile:Bill {
    var mobile_Manufacturer_Name:String?
    var plan_name:String?
    //var planname:String?
    
    var mobile_Number: String?

  //  var internet_Gb_Used:Int
    var internetgdused:Float?
    

    var minutes_Used:Float
    //var minutesused:Float
    
    
init(bill_ID:Int,billDate:Date,billType:String,totalBillAmount:Float,mobileManufName:String,planName:String,mobileNumber:String,internetGbUsed:Float,minutesUsed:Float) {
        
        self.mobile_Manufacturer_Name = mobileManufName
        self.plan_name = planName
        self.mobile_Number = mobileNumber
        self.internetgdused = internetGbUsed
        self.minutes_Used = minutesUsed
    
        super.init(bill_ID: bill_ID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        //        super.init(bill_ID:billId, billDate:bill_Date, billType: bill_Type,totalBillAmount:total_Bill_Amount)
    }
    
}
