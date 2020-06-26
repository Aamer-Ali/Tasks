//
//  EntryViewController.swift
//  Tasks
//
//  Created by CallMe on 13/06/20.
//  Copyright © 2020 CallMe. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var field: UITextField!
    
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask((Any).self)
        return true
    }
    
    
    @IBAction func saveTask(_ sender: Any) {
        
        guard  let text = field.text, !text.isEmpty else {
            return
        }
        
        guard  var count  = UserDefaults().value(forKey: "count") as? Int else
        {
            return
        }
        
        let newCount = count + 1
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")

        update?()
        
        print("What are you waitng for.....")
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
