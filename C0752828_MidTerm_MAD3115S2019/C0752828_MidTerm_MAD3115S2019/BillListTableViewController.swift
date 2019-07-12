//
//  BillListTableViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class BillListTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
  
    
    
    

    
    @IBOutlet weak var tblCustList: UITableView!
    var custArray = Array<Customer>()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        var bill_1  = Mobile(bill_ID: 1, billDate: Date(), billType: "Mobile",totalBillAmount: 88.90, mobileManufName: "Google", planName: "Pixel", mobileNumber:"6475623440" , internetGbUsed: 50.9, minutesUsed: 20.9)
        
        var bill_2 = Hydro(bill_ID: 2, billDate: Date(), billType: "Hydro", totalBillAmount: 20.2, agencyname: "StarHydro", unitConsumed: 80)
        var bill_3 = Internet(bill_ID: 3, billDate: Date(), billType: "Internet", totalBillAmount: 48.4, providerName: "Freedom", InternetGbUsed: 10.0)
        
        var bill_4 = Mobile(bill_ID: 4, billDate: Date(), billType: "Mobile", totalBillAmount: 30.5, mobileManufName: "Apple", planName: "super", mobileNumber: "6262129087", internetGbUsed: 15.0, minutesUsed: 30.2)
        
        var bill_5 = Hydro(bill_ID: 6, billDate: Date(), billType: "Hydro", totalBillAmount: 76.09,agencyname: "Gig Tech", unitConsumed: 77)
        
        
      
        let customer1 = Customer(customerId: 1, Customerfname:"rahul", customerlname: "rastogi", customeremail:"rahul@gmail.com",phoneNumber:"6475623440")

        customer1.billDictionary[0] = bill_1
        customer1.billDictionary[1] = bill_5
        customer1.billDictionary[2] = bill_2
    
    
        let customer2 = Customer(customerId: 2, Customerfname: "sidharth", customerlname: "Nayyar", customeremail: "sidnayyar1", phoneNumber: "6479803783")
    
        customer2.billDictionary[0] = bill_3
        customer2.billDictionary[1] = bill_4
        
        let customer3 = Customer(customerId: 3, Customerfname: "Rhoit", customerlname: "Sharma", customeremail: "rhoit@gmail.com", phoneNumber: "4267892087")
        customer3.billDictionary[0] = bill_1
        customer3.billDictionary[1] = bill_2
        customer3.billDictionary[2] = bill_4
        
        self.custArray = [customer1,customer2,customer3]
        
      self.tblCustList.delegate = self
        self.tblCustList.dataSource = self
        
        
        
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return custArray.count
    }
    
    func tableView(_ tableView: UITableView?, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView?.dequeueReusableCell(withIdentifier: "CustomerList") as! UITableViewCell
                cell.textLabel?.text = self.custArray[indexPath.row].customer_First_Name ?? "no name"
        //
        //        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onClickCustomer(_:)))
        //        cell.tag = indexPath.row
        //        cell.addGestureRecognizer(tapGesture)
               return cell
    }
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return custArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let  cell = tableView.dequeueReusableCell(withIdentifier: "CustomerList") as! UITableViewCell
//        cell.textLabel?.text = self.custArray[indexPath.row].customer_First_Name
//
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.onClickCustomer(_:)))
//        cell.tag = indexPath.row
//        cell.addGestureRecognizer(tapGesture)
//        return cell
//    }
//    @objc func onClickCustomer(_ sender: UITapGestureRecognizer) {
//        print(sender.view!.tag)// to display index
//
//        Customer.customerClciked = self.custArray[(sender.view?.tag)!]
//        self.performSegue(withIdentifier: "NextPage", sender: nil)
//
//    }
    // Do any additional setup after loading the view.




    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
     */
    
}
