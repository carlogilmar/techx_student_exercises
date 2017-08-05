//
//  ViewController.swift
//  ParseJsonHTTP
//
//  Created by Brian Voong on 8/5/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let urlString = "http://samples.openweathermap.org/data/2.5/weather?q=beijing,china&appid=b1b15e88fa797225412429c1c50c122a1"
        let urlString = "http://www.ipip5.com/today/api.php?type=json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let dataAsString = String(data: data!, encoding: .utf8)
            print(dataAsString ?? "")
            
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

