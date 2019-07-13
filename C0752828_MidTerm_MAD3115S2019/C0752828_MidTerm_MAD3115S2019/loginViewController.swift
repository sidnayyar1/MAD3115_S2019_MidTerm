//
//  ViewController.swift
//  C0752828_MidTerm_MAD3115S2019
//
//  Created by Sidharth Nayyar on 2019-07-11.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

       var loggedIn = false
    @IBOutlet weak var userEmailTxt: UITextField!
    @IBOutlet weak var userPasswordTxt: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
 
    let userDefaultKey = UserDefaults.standard
    
    override func viewDidLoad() {
        getRememberMeValues()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func loginBtn(_ sender: UIButton) {
        //taking 2 variables
        var email = self.userEmailTxt.text!
        var Password = self.userPasswordTxt.text!
        //calling plist
        if let pList = Bundle.main.path(forResource: "UserInfo", ofType: "plist"){
        //calling contents of plist
        if let dict = NSDictionary(contentsOfFile: pList) {
          
            if let users = dict["userList"] as? [[String:Any]]{
                //checking email and password with plist data after user entered
                for user in users{
                    if ( (email == (user["userEmail"] as! String)) && (Password == (user["userPassword"] as! String)) ){
                        if self.rememberMeSwitch.isOn{
                        userDefaultKey.setValue(self.userEmailTxt.text, forKey: "userEmail")
                        userDefaultKey.setValue(self.userPasswordTxt.text, forKey: "userPassword")
                            print("logged in with email id and password remembered")
                            self.rememberMeSwitch.setOn(true, animated: true)
                        } else {
                            userDefaultKey.removeObject(forKey: "userEmail")
                            userDefaultKey.removeObject(forKey: "userPassword")
                       self.rememberMeSwitch.setOn(false, animated: false)
                        }
                        print("Hello")
                    
                      self.performSegue(withIdentifier: "userList", sender: self)
                       loggedIn = true
                    }
                    
                        }
                    }
                }
            }
        
        if !loggedIn {
            let alert = UIAlertController(title: "Error", message: "Invalid User Id and Password!Try again", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
             let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okAction)
            alert.addAction(cancelAction)
            self.present(alert,animated: true ,completion: nil)
        }
    
  
    }
    
    private func getRememberMeValues()
        {
        
        if let email = userDefaultKey.string(forKey: "userEmail")
            {
            userEmailTxt.text = email
            
            if let password = userDefaultKey.string(forKey: "userPassword")
            {
                userPasswordTxt.text = password
                }
        
            }
    
    }
    @IBAction func unWindLogoutFromAnyScreen(storyboard : UIStoryboardSegue){

        print("Logout")
        _ = storyboard.source as! BillListTableViewController
        userEmailTxt.text = ""
        userPasswordTxt.text = ""

    
    }

}
