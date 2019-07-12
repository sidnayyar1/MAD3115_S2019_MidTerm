//
//  BillListTableViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class BillListTableViewController: UIViewController {

    
    var custArray = Array<Customer>()
    override func viewDidLoad() {
        super.viewDidLoad()
        //created bill objects
        
        var bill_1  = Mobile(bill_ID: 1, billDate: Date(), billType: "Mobile",totalBillAmount: 88.90, mobileManufName: "Google", planName: "Pixel", mobileNumber:"6475623440" , internetGbUsed: 50.9, minutesUsed: 20.9)
        
        var bill_2 = Hydro(bill_ID: 2, billDate: Date(), billType: "Hydro", totalBillAmount: 20.2, agencyname: "StarHydro", unitConsumed: 80)
       // var bill_2  = Mobile(bill_ID: 2, billDate: Date(), billType: "Mobile",totalBillAmount: 98.90, mobileManufName: "Sony", planName: "E2", mobileNumber: "4571234567", internetGbUsed: 60.9, minutesUsed: 70.7)
        var bill_3 = Internet(bill_ID: 3, billDate: Date(), billType: "Internet", totalBillAmount: 48.4, providerName: "Freedom", InternetGbUsed: 10.0)
        
        var bill_4 = Mobile(bill_ID: 4, billDate: Date(), billType: "Mobile", totalBillAmount: 30.5, mobileManufName: "Apple", planName: "super", mobileNumber: "6262129087", internetGbUsed: 15.0, minutesUsed: 30.2)
        
        var bill_5 = Hydro(bill_ID: 6, billDate: Date(), billType: "Hydro", totalBillAmount: 76.09,agencyname: "Gig Tech", unitConsumed: 77)
        
        
        // creating customers
        
        var customer_1 = Customer(customerId: 1, Customerfname:"rahul", customerlname: "rastogi", customeremail:"rahul@gmail.com",phoneNumber:"6475623440")
        
        customer_1.billDictionary[0] = bill_1
        customer_1.billDictionary[1] = bill_5
        customer_1.billDictionary[2] = bill_2
    }
    
    
    // Do any additional setup after loading the view.
}



    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
