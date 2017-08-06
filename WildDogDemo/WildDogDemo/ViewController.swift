//
//  ViewController.swift
//  WildDogDemo
//
//  Created by Brian Voong on 8/6/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
import Wilddog
import WilddogAuth
import WilddogCore
import WilddogSync

class ViewController: UITableViewController {
    
    var cars = [Car]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .yellow
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.name
        cell.detailTextLabel?.text = car.owner
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // you should have your own syncURL based on your own Wilddog account
        let options = WDGOptions(syncURL: "https://wd8910991638hewihy.wilddogio.com")
        WDGApp.configure(with: options)
        
        // this gets me to my root of Wilddog sync
        let wildogRootReference = WDGSync.sync().reference()
        // this will reset all the data
//        wildogRootReference.setValue(["name": "Brian"])
        
//        wildogRootReference.updateChildValues(["name": "Tom"])
//        wildogRootReference.updateChildValues(["age": "20"])
        
        // this is how you set data on a subtree, for example "cars"
        let carsReference = WDGSync.sync().reference().child("cars")
//        carsReference.updateChildValues(["name": "BMW"])
        
        let carChildRef = carsReference.childByAutoId()
        carChildRef.updateChildValues(["name": "Toyota"])
        
        //now I want to retrieve/fetch/get the data out of Wilddog
        carsReference.observeSingleEvent(of: .value, with: { (snapshot) in
            
            let snapshots = snapshot.children.allObjects as! [WDGDataSnapshot]
            
            for snapshot in snapshots {
                let dictionary = snapshot.value as? [String: Any]
//                print(dictionary?["name"], dictionary?["owner"])
                // get our Wilddog car properties
                let name = dictionary?["name"] as? String ?? ""
                let owner = dictionary?["owner"] as? String ?? ""
                // setup a new car object
                let car = Car(name: name, owner: owner)
                // put it in my array for later
                self.cars.append(car)
            }
            //always need to reload after I get more information to show
            self.tableView.reloadData()
            
//            print(snapshot)
        }) { (err) in
            print("Failed to observe/fetch objects:", err)
        }
    }
    
    
    
    
    


}




