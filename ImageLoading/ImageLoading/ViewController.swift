//
//  ViewController.swift
//  ImageLoading
//
//  Created by Brian Voong on 8/3/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1. make an outlet
    @IBOutlet weak var bigImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let's use this image
        let urlString = "https://i.imgur.com/Iz3ceJk.jpg"
        let url = URL(string: urlString)
//        print(Date())
//        let data = NSData.init(contentsOf: url!)
//        print(Date())
//        let image = UIImage(data: data! as Data)
//        // 2. set the image on your UIImageView outlet
//        bigImageView.image = image
        
        // load data from internet asynchronously, no waiting
        URLSession.shared.dataTask(with: url!) { (dataFromURLSession, resp, error) in
            //one way of dealing with optionals so your app doesn't crash
//            guard let dataOptionalBinding = data else { return }
            //this is the other way of doing optional binding
            if let dataOptionalBinding = dataFromURLSession {
                let imageComingBackFromURLSession = UIImage(data: dataOptionalBinding)
                // this gets back on the main UI thread, URLSession fetches data from the internet in the background
                DispatchQueue.main.async {
                    self.bigImageView.image = imageComingBackFromURLSession
                }
                 //some kind of image???
            }
            //data! // will crash if data is nil
        }.resume() //if you don't resume, URLSession does not start
    }

}




