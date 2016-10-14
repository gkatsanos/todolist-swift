//
//  TodoViewController.swift
//  TodoList
//
//  Created by George on 09/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = nameTextField.text ?? ""
            
        // Set the todo to be passed to TodoTableViewController after the unwind segue.
        todo = Todo(name: name)
    }
    
    
    // MARK: Actions
    @IBAction func AddTodo(_ sender: AnyObject) {
    }
}

