//
//  ViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-11.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTxt: UITextField!
    @IBOutlet weak var userPasswordTxt: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
  
    var loggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        
        var email = self.userEmailTxt.text!
        var Password = self.userPasswordTxt.text!
        
        if let pList = Bundle.main.path(forResource: "userInfo", ofType: "plist"){
        
        if let dict = NSDictionary(contentsOfFile: pList) {
          
            if let users = dict["userList"] as? [[String:Any]]{
                
                for user in users{
                    if ( (email == (user["userEmailId"] as! String)) && (Password == (user["userPassword"] as! String)) ){
                        print("Hello")
                        let sb = UIStoryboard(name: "Main", bundle: nil)
                        
                       self.performSegue(withIdentifier: "userProfile", sender: nil)
                       loggedIn = true
                    }
                    
                        }
                    }
                }
            }
        
        if !loggedIn{
            let alert = UIAlertController(title: "Error", message: "User Email ID or Password is Incorrect", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
             let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            self.present(alert,animated: true ,completion: nil)
        }
        
        }
    }
