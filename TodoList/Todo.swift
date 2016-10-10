//
//  Todo.swift
//  TodoList
//
//  Created by George on 10/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class Todo {
    // MARK: Properties
    
    var name: String
    
    // MARK: Initialization
    
    init?(name: String) {
        self.name = name
        if (name.isEmpty || name == "") {
            return nil
        }
    }
}
