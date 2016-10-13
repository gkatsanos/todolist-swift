//
//  TodoViewController.swift
//  TodoList
//
//  Created by George on 09/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITextFieldDelegate {
// MARK: Properties
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!

    var todo: Todo?
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

    }
    // MARK: Navigation
    
    // This method lets you configure a view controller before it's presented.
    func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let name = nameTextField.text ?? ""
            
            // Set the meal to be passed to MealTableViewController after the unwind segue.
            todo = Todo(name: name)
        }
    }
    
    // MARK: Actions
    @IBAction func AddTodo(_ sender: AnyObject) {
    }
}

