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
    var planname:String?    {
        get{
            return plan_name
        }
    }
    
    var mobile_Number: Int?
    var mobilenumber:Int?{
        get{
            return mobile_Number
        }
    }
    var internet_Gb_Used:Int
    var internetgdused:Int?{
        get {
            return internet_Gb_Used
        }
    }
    var minutes_Used:Int
    var minutesused:Int {
        get {
            return minutes_Used
        }
    }
    
    init(bill_ID:Int,billDate:Date,billType:String,totalBillAmount:Float,mobileManufName:String,planName:String,mobileNumber:Int,internetGbUsed:Int,minutesUsed:Int) {
        
        self.mobile_Manufacturer_Name = mobileManufName
        self.plan_name = planName
        self.mobile_Number = mobileNumber
        self.internet_Gb_Used = internetGbUsed
        self.minutes_Used = minutesUsed
        super.init(bill_ID:bill_ID,billDate: billDate,billType: billType,totalBillAmount: totalBillAmount)
        //        super.init(bill_ID:billId, billDate:bill_Date, billType: bill_Type,totalBillAmount:total_Bill_Amount)
    }
    
}
