//
//  ViewController.swift
//  SDWebImageIntegration
//
//  Created by Brian Voong on 8/6/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I want to load an image using SDWebImage
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.frame = view.frame
        view.addSubview(imageView)
        
        let myImageUrl = URL(string: "https://i.imgur.com/4K4266j.jpg")
        imageView.sd_setImage(with: myImageUrl!)
        
        // we don't have to go through all the trouble of using URLSession.shared.dataTask(....completionHandler)....
        // this means less headache for us, and less code to type, and less mistakes that we can make
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

