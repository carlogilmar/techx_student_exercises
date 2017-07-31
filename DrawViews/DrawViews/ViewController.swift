//
//  ViewController.swift
//  DrawViews
//
//  Created by Brian Voong on 7/31/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

// some comments for you guys here
// CMD + R is to COMPILE then RUN
// CMD + 1/2/3/4/5 is to change the size of your simulator

class ViewController: UIViewController {

    // viewDidLoad code gets executed when view finishes loading
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        drawViewsWithAutoLayout()
//        drawViewsWithFrames()
        
    }
    
    // let's begin drawing views using Anchors from AutoLayout
    func drawViewsWithAutoLayout() {
        let redView = UIButton(type: .system)
        redView.setTitle("MY BUTTON", for: .normal)
        redView.backgroundColor = .red
        
        //some other stuff that you need
        //don't be too scared of this, you just need it
        //this makes it so anchors wont be ignored
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(redView)
        
        // 4 anchors to make it show up in your app
        //constant is "padding"
        redView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
        redView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let greenView = UILabel()
        greenView.text = "Hello everyone from TechX 2017"
        greenView.backgroundColor = UIColor.green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(greenView)
        //need TOP / LEFT / WIDTH / HEIGHT
        greenView.leftAnchor.constraint(equalTo: redView.rightAnchor, constant: 8).isActive = true
        greenView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 0).isActive = true
//        greenView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        greenView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -12).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        let blueTextField = UITextField()
        blueTextField.backgroundColor = UIColor(white: 0, alpha: 0.1)
        blueTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueTextField)
        blueTextField.leftAnchor.constraint(equalTo: greenView.leftAnchor).isActive = true
        blueTextField.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 8).isActive = true
        blueTextField.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        blueTextField.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func drawViewsWithFrames() {
        let redView = UIView() //this creates a simple View object
        
        //Swift 2.3
        //        redView.backgroundColor = UIColor.redColor()
        redView.backgroundColor = .red //this sets the background color to red
        redView.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        view.addSubview(redView) //this makes our redView visible...hopefully
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.frame = CGRect(x: 20 + 100 + 10, y: 20, width: 80, height: 20) // what is this frame?
        view.addSubview(greenView)
        
        let purpleView = UIView()
        purpleView.backgroundColor = UIColor.purple
        
        let cyanView = UIView()
        cyanView.backgroundColor = UIColor.cyan
        
        let yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
    }
}










