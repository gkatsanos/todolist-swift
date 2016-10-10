//
//  ViewController.swift
//  TodoList
//
//  Created by George on 09/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
// MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var todoTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        todoTitle.text = textField.text
    }
    // MARK: Actions
    @IBAction func AddTodo(_ sender: AnyObject) {
    }
}

