//
//  ViewController.swift
//  Todoey
//
//  Created by CEO of this Mac on 7/17/18.
//  Copyright © 2018 Soknang Chheng. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView delegate method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType == .checkmark {
            tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType = .checkmark
        }
        
        
        
        tableView.deselectRow(at: IndexPath, animated: true)
        
    
        
    }
    // MARK - Add new items section
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        
    
   let alert = UIAlertController(title: "Add New Todoey item", message: "<#T##String?#>", preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Add item", style: .default) { (action) in
            // what wil happen once the user clicks the Add item button on our UIAlert
         
            self.itemArray.append(textField.text!)
            
            self.tableView.reloadData()
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create New item"
            textField = alertTextField
        }
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    
    }
    
    
  
}

