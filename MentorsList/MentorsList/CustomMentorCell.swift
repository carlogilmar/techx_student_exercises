//
//  CustomMentorCell.swift
//  MentorsList
//
//  Created by Brian Voong on 8/1/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

//UIKit contains things such as UILabel, UIButton, UITableViewCell
//import means "make these classes available to me"
import UIKit

//this custom class will be used to represent our mentors
// HOLD CONTROL KEY and Drag
class CustomMentorCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    //@IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
}





