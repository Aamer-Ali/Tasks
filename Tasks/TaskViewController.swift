//
//  TaskViewController.swift
//  Tasks
//
//  Created by CallMe on 13/06/20.
//  Copyright © 2020 CallMe. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var task : String?
    var currentPosition : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        label.text = task
    }
    
    
    @IBAction func deleteTask(_ sender: Any) {
        
//        guard  var count  = UserDefaults().value(forKey: "count") as? Int else
//        {
//            return
//        }
//        let newCount = count - 1
//
//        UserDefaults().setValue(newCount, forKey: "count")
//
//        UserDefaults().setValue(nil, forKey: "task_\(currentPosition!)")
//
//        navigationController?.popViewController(animated: true)
    }
    
    
}
