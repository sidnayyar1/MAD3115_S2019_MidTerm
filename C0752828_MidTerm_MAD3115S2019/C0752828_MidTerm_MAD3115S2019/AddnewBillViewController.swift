//
//  AddnewBillViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-15.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class AddnewBillViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.billType.count
    }
    
  
    
   
    

    @IBOutlet weak var billTypePicker: UIPickerView!
    var billType = ["Mobile","Hydro","Electricity"]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.billTypePicker.delegate = self
        self.billTypePicker.dataSource = self
      
        // Do any additional setup after loading the view.
    }
    
  
  
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
    return billType[row]
    
    }
    
   
  
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
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
