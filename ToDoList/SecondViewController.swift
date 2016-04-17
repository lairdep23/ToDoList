//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Evan on 4/12/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
    }

    @IBAction func addItem(sender: AnyObject) {
        
        if textField.text != "" {
            
        toDoList.append(textField.text!)
            
        textField.text = ""
            
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
   


}

