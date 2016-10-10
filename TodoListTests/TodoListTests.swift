//
//  TodoListTests.swift
//  TodoListTests
//
//  Created by George on 09/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import XCTest
@testable import TodoList

class TodoListTests: XCTestCase {

    // MARK: TodoList Tests
    
    // Test to confirm that the TodoList initializer returns when no name
    // is provided
    func todoListInitialization() {
        
        // Success case
        let potentialItem = Todo(name: "Pick up the mail")
        XCTAssertNotNil(potentialItem)
        
        // Failure case
        let noName = Todo(name: "")
        XCTAssertNotNil(noName, "Empty name is invalid")
    }
   

}
