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
        
//        let urlString = "http://api.openweathermap.org/data/2.5/weather?q=Shanghai&appid=545982f2ac70eb935311e620c79e3bda"
        let urlString = "http://www.ipip5.com/today/api.php?type=json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let dataAsString = String(data: data!, encoding: .utf8)
//            print(dataAsString ?? "")
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String: Any]
                
                print(json["result"])
                
//                let main = json["main"]
                
//                let weather = json["weather"] as! [[String: Any]]
//                print(weather[0]) // will crash if weather has no elements
                //weather.first will not crash
                
            } catch let jsonError {
                print("Failed to parse JSON", jsonError)
            }
            
            
            
            
            
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

