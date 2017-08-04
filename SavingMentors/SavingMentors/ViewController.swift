//
//  ViewController.swift
//  SavingMentors
//
//  Created by Brian Voong on 8/4/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

// Core Data is used to save/persist data on disk

import UIKit
// we didn't need this before because we were using UITableViewController
import CoreData

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var mentors = [Mentor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllMyMentorsAndReloadTable()
    }
    
    func getAllMyMentorsAndReloadTable() {
        let fetchRequest = NSFetchRequest<Mentor>(entityName: "Mentor")
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            mentors = try context.fetch(fetchRequest)
            tableView.reloadData()
        } catch let err {
            print("Failed to fetch mentors:", err)
        }
    }
    
    //this code is executed everytime we see this view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //i recommend just fetching all the mentors again
        getAllMyMentorsAndReloadTable()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mentors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
}

