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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameField.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        // pop back
        
        
        navigationController!.popViewController(animated: true)
    }

   
}
