//
//  ShowBillDetailsViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-12.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {

    @IBOutlet weak var lblcustomerid: UILabel!
    @IBOutlet weak var lblfname: UILabel!
    @IBOutlet weak var lbllastname: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblphonenumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//self.lblcustomerid.text = String(Customer.customerClciked.customer_ID!)
        
        
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

}
