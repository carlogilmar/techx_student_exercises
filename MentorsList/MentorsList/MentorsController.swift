//
//  ViewController.swift
//  MentorsList
//
//  Created by Brian Voong on 8/1/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

// 1. let's use a UITableViewController
class MentorsController: UITableViewController {

    //IB = Interface Builder
    @IBOutlet weak var myTableView: UITableView!
    
    // let gives you a constant that you can't change
    // var variables can be changed/modified
    var mentors = [Mentor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create a Mentor object in your project
        let brian = Mentor(name: "Brian", location: "Shanghai")
//        print(brian.name)
        
        let derek = Mentor(name: "Derek", location: "Back there")
        
        mentors.append(brian)
        mentors.append(derek)
        
        mentors.append(Mentor(name: "Karen", location: "somewhere else"))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mentors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // class casting
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as? CustomMentorCell
//        cell?.nameLabel.text = "THIS IS MY NAME TEXT"
        
        let mentor = mentors[indexPath.row]
        cell?.nameLabel.text = mentor.name
        
        
        //CMD + B to build your project so that you can see new class properties
        //what is a UIImage Object?
        let image = UIImage(named: "derek")
        let karensImage = #imageLiteral(resourceName: "karen")
        cell?.profileImageView.image = karensImage
        cell?.profileImageView.backgroundColor = .red
        
        return cell!
    }

    

}





