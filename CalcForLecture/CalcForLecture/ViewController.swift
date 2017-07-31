//
//  ViewController.swift
//  CalcForLecture
//
//  Created by Brian Voong on 7/31/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //let myProperty = "test"
    
    //this creates a textfield object we can access later
    let xTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter X Value"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .line
        return textField
    }()
    
    let computeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Compute", for: .normal)
        //i always forget to set this myself
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleCompute), for: .touchUpInside)
        return button
    }()
    
    func handleCompute() {
        print("Handling Compute")
        print(xTextField.text)
        //One more Hint
        let xValue = Int(xTextField.text ?? "") ?? 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(xTextField)
        xTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        xTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 28).isActive = true
        xTextField.widthAnchor.constraint(equalToConstant: 80).isActive = true
        xTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(computeButton)
        computeButton.leftAnchor.constraint(equalTo: xTextField.leftAnchor).isActive = true
        computeButton.topAnchor.constraint(equalTo: xTextField.bottomAnchor).isActive = true
        computeButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -10).isActive = true
        computeButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //        anotherMethodCall()
    }
    
//    func anotherMethodCall() {
//        print(myProperty)
//    }


}

