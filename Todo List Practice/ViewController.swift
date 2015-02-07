//
//  ViewController.swift
//  Todo List Practice
//
//  Created by Richard Tyran on 2/7/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginButton(sender: AnyObject) {
        
        
        var toDoList = ToDoTVC()
        
        self.navigationController?.pushViewController(toDoList, animated: true)
        
//        println(user)
//        
//        var userQuery = PFUser.query()
//        
//        userQuery.whereKey("username", equalTo: userNameField.text)
//        
//        userQuery.findObjectsInBackgroundWithBlock { (objects, error) -> Void in
//            
//            if objects.count > 0 {
//                
//                self.login()
//                
//                
//                
//            } else {
//                
//                self.signUp()
//                
//            }
//            
//            
//            
//        }
//       
        
        
        
    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func signUp() {
        
        var user = PFUser()
        
        user.username = userNameField.text
        user.password = passwordField.text
        
        user.signUpInBackground()
        
    }
    
    func login(){
        
        PFUser.logInWithUsernameInBackground(userNameField.text, password: passwordField.text) { (user: PFUser!, error: NSError!) -> Void in
            
            if user != nil {
                

                
            } else {
                
                
            }
            
            
        }
  
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

