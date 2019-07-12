//
//  Internet.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import Foundation
class Internet:Bill {
    
    var provide_Name:String?
    var Internet_Gb_Used:Int?
    var internetgbused: Int?{
        get {
            return Internet_Gb_Used
        }
    }
    
    
    init(bill_ID:Int,billDate:Date,billType:String,totalBillAmount:Float,providerName:String,InternetGbUsed:Int) {
        
        self.provide_Name = providerName
        self.Internet_Gb_Used = InternetGbUsed
        
        super.init(bill_ID: bill_ID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        
}

}
