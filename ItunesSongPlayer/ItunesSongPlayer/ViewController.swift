//
//  ViewController.swift
//  ItunesSongPlayer
//
//  Created by Brian Voong on 8/5/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
import AVFoundation

// 3 UISearchBarDelegate
class ViewController: UITableViewController, UISearchBarDelegate {

    let player = AVPlayer()
    
    // 1
    lazy var searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.placeholder = "Enter search terms"
        sb.delegate = self // self is going to be helping us do extra work
        return sb
    }()
    
    // 2
    var searchTimer: Timer?
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //use a timer to prevent over-searching
        searchTimer?.invalidate()
        searchTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(fetchSongs), userInfo: nil, repeats: false)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selectin a row...")
        
        // i'll give you another watermelon
        // url string
        
        let result = results[indexPath.row]
        // how to get to previewUrl
        let previewUrlString = result["previewUrl"] as! String
        
        // i just need to play this preview url now
        
        // let's use our AVPlayer object to play the song
        let previewUrl = URL(string: previewUrlString)
        let songPlayerItem = AVPlayerItem(url: previewUrl!)
        player.replaceCurrentItem(with: songPlayerItem)
        player.play() // this will start our song
        
        
        print(previewUrlString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 4
        navigationItem.titleView = searchBar
        
        //let's get out API data inside of our app, but how do we actually do the data fetching??
        fetchSongs()
    }
    
    //[Type] this is an array some kind of Type
    //[String: Any] is a dictionary
    //[[String: Any]] this is an Array of Dictionaries
    var results = [[String: Any]]()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // ! = "bang"
        // as! "as bang" is class casting
        // so if we are smarter than Xcode, we can tell it what the class really is
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! SongCell
        
        // need to get song name........????
        // royal...json???...any other guesses?
        // you get watermelon if you get it right....
        
        // result is the element in the results array, which is really the song/track coming back from the API
        let result = results[indexPath.row] // what is this?
        // a CD has many tracks
        // track == song
        // immaculate == perfect, flawless
        // flaw = imperfection
        let songName = result["trackName"] as? String //song name
        let albumName = result["collectionName"]
        cell.nameLabel.text = songName
        cell.albumLabel.text = albumName as? String
        
        return cell
    }
    
    func fetchSongs() {
        //here is where I will get my JSON data, it's OK if you don't understand this right now
        
        // 1. change term to be \(searchBar.text!)
        // 2. add .addingPercentEncoding
        
        let urlString = "https://itunes.apple.com/search?term=\(searchBar.text!)&media=music".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        // 3. change to urlString!
        let url = URL(string: urlString!)
        URLSession.shared.dataTask(with: url!) { (jsonBlobData, _, _) in
            
            //let's see what jsonBlobData is
//            let jsonBlobAsAString = String(data: jsonBlobData!, encoding: .utf8)
//            print("Here is what my data looks like:", jsonBlobAsAString)
            
            // now i'm going to use JSONSerialization to make it easy to access the data
            do {
                //this turns the ugly data into something we can use
                //ignore .mutableContainers for now
                let json = try JSONSerialization.jsonObject(with: jsonBlobData!, options: .mutableContainers)
//                print(json)
                // response doesn't have a content-type = "application/json"
                
                // go ahead and type this out and see if you can get the trackNames to print out
                let dictionary = json as! [String: Any]
                let results = dictionary["results"] as! [[String: Any]]
                
                // we set the Instance Property of results here
                self.results = results
                // then we just refresh the table
                
                // what does this do? We get back onto the main UI Thread so that we can update the UI
                // if you don't do this, your app can be slow
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
//                for result in results {
//                    print(result["trackName"])
//                }
                
            } catch let jsonError {
                print("Failed to serialize JSON:", jsonError)
            }
        }.resume()
        //resume will run our data fetch process
        print("Trying to fetch data from API")
    }
}









