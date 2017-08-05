//
//  SongCell.swift
//  ItunesSongPlayer
//
//  Created by Brian Voong on 8/5/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

// some of you guys might be seeing NSObject or UIViewController as your "Parent Class"
// class is a keyword in Swift which is reserved for Swift
// SongCell is a subclass of UITableViewCell
// what is a subclass?
// We say that UITableViewCell is the "Parent Class" of SongCell
// we also say SongCell inherits from UITableViewCell
class SongCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var albumLabel: UILabel!

    // be careful not to name your outlet imageView because the cell has one already
    @IBOutlet weak var albumCoverImageView: UIImageView!
}
