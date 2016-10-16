//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Stephen on 10/16/16.
//  Copyright © 2016 Stephen. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous ViewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

   
}
