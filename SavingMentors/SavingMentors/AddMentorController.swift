//
//  AddMentorController.swift
//  SavingMentors
//
//  Created by Brian Voong on 8/4/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
//2 Import Core Data
import CoreData

class AddMentorController: UIViewController {

    // 1. Make your IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add in a done button to the top right
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(handleDone))
    }
    
    func handleDone() {
        print("Handling done...")
        print("Name: \(nameTextField.text), Location: \(locationTextField.text)")
        
        // 3 insert your mentor into CoreData
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let mentor = NSEntityDescription.insertNewObject(forEntityName: "Mentor", into: context)
        
        // we'll save the mentor next...
        // 1
        mentor.setValue(nameTextField.text, forKey: "name")
        mentor.setValue(locationTextField.text, forKey: "location")
        
        // finally we'll save it into CoreData
        // 2
        do {
            try context.save() // this can throw an error so we catch it
        } catch let err {
            print("Failed to save:", err)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
