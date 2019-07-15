//
//  ShowBillDetailsViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

   
    @IBOutlet weak var lblcustomerid: UILabel!
    @IBOutlet weak var lblfname: UILabel!
    @IBOutlet weak var lbllname: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblphone: UILabel!
    @IBOutlet weak var lbltotalamout: UILabel!
    @IBOutlet weak var tblcustomerbills: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.lblcustomerid.text = String(Customer.customerClciked.customer_ID)
        self.lblfname.text = Customer.customerClciked.customer_First_Name
         self.lbllname.text = Customer.customerClciked.customer_Last_Name
        self.lblemail.text = Customer.customerClciked.customer_email_Id
        self.lblphone.text = Customer.customerClciked.customer_Phone_Number
        self.lbltotalamout.text = String(Customer.customerClciked.totalAmountPayable)
        
        self.tblcustomerbills.delegate = self
        self.tblcustomerbills.dataSource = self
          var add = UIBarButtonItem(title: "Add New", style: .plain, target: self, action: #selector(self.nextPage(_sender:)))
        self.navigationItem.rightBarButtonItem = add
        
    }
    @objc func nextPage(_sender: Any){
        
        self.performSegue(withIdentifier: "nextPageTo", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Customer.customerClciked.billDictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "custBills") as! UITableViewCell
        cell.textLabel?.text = Customer.customerClciked.billDictionary[indexPath.row]?.bill_Type
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
