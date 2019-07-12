//
//  Customer.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import Foundation
class Customer{
    
    
    var customer_ID:Int?
    var customer_First_Name:String?
    var customer_Last_Name:String?
    var customer_email_Id:String?
    var customer_Phone_Number:String
    var billDictionary = [Int:Bill]()
    var totalAmountPayable: Float{
        var TotalAmount:Float = 0.0
        for bill in billDictionary
        {
            TotalAmount = TotalAmount + bill.value.total_Bill_Amount!
        }
        return TotalAmount
    }
    
    
    init(customerId:Int,Customerfname:String,customerlname:String,customeremail:String,phoneNumber:String) {
        
        self.customer_ID = customerId
        self.customer_First_Name = Customerfname
        self.customer_Last_Name = customerlname
        self.customer_email_Id = customeremail
        self.customer_Phone_Number = phoneNumber
}
    
    
}
