//
//  TodoListTests.swift
//  TodoListTests
//
//  Created by George on 09/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit
import XCTest
@testable import TodoList

class TodoListTests: XCTestCase {

    // MARK: TodoList Tests
    
    // Test to confirm that the TodoList initializer returns when no name
    // is provided
    func testTodoListInitialization() {
        
        // Success case
        let potentialItem = Todo(name: "Pick up the mail")
        XCTAssertNotNil(potentialItem)
        
        // Failure case
        let noName = Todo(name: "")
        XCTAssertNil(noName)
    }

}
