//
//  TodoTableViewController.swift
//  TodoList
//
//  Created by George on 10/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {
    // MARK: Properties
    
    var todos = [Todo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load Sample Data.
        loadSampleTodos()
    }
    
    func loadSampleTodos() {
        let todo1 = Todo(name: "This is a first todo")!

        let todo2 = Todo(name: "This is another todo")!

        let todo3 = Todo(name: "This is a crazy todo")!
        
        todos += [todo1, todo2, todo3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TodoTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TodoTableViewCell

        // Fetches the appropriate todo for the data source layout.
        let todo = todos[indexPath.row]
        
        cell.nameLabel.text = todo.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToTodoList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as?
            TodoViewController, todo = source.todo {
            let newIndexPath = NSIndexPath(forRow: todo.count, inSection: 0)
        }
    }

}
