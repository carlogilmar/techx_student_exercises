//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Brian Voong on 7/30/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Instance Properties
    
    let xTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.layer.borderColor = UIColor(white: 0, alpha: 0.7).cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        textField.placeholder = "X"
        return textField
    }()
    
    let operatorTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.layer.borderColor = UIColor(white: 0, alpha: 0.7).cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        textField.text = "+"
        return textField
    }()
    
    let yTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(white: 0, alpha: 0.7).cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        textField.placeholder = "Y"
        return textField
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Result"
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(white: 0, alpha: 0.2)
        return label
    }()
    
    let computeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Compute", for: .normal)
        button.addTarget(self, action: #selector(handleCompute), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.red, for: .normal)
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 4
        return button
    }()
    
    func handleCompute() {
        // First we need to capture the input values and convert them to Int or Float
        let x = Int(xTextField.text ?? "") ?? 0 // ?? means default if unable to unwrap
        let y = Int(yTextField.text ?? "") ?? 0
        
        //if segment is "none"
        if segmentedControl.selectedSegmentIndex == 0 {
        
            if operatorTextField.text == "+" {
                //resultLabel.text = String(x + y)
                resultLabel.text = "\(x + y)"
            } else if operatorTextField.text == "-" {
                resultLabel.text = "\(x - y)"
            } else if operatorTextField.text == "*" {
                resultLabel.text = "\(x * y)"
            } else if operatorTextField.text == "/" {
                resultLabel.text = "\(x / y)"
            } else {
                resultLabel.text = "Could not compute..."
            }
            
        } else {
            
            // test
            //plus
            if segmentedControl.selectedSegmentIndex == 1 {
                resultLabel.text = "\(x + y)"
            } else if segmentedControl.selectedSegmentIndex == 2 {
                resultLabel.text = "\(x - y)"
            } else if segmentedControl.selectedSegmentIndex == 3 {
                resultLabel.text = "\(x * y)"
            } else if segmentedControl.selectedSegmentIndex == 4 {
                resultLabel.text = "\(x / y)"
            }
            
        }
    }
    
    let segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["None", "Add", "Subtract", "Multiply", "Divide"])
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.tintColor = .blue
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //layout x variable UITextField
        view.addSubview(xTextField)
        xTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        xTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 32).isActive = true
        xTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        xTextField.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        //layout operator UITextField
        view.addSubview(operatorTextField)
        operatorTextField.topAnchor.constraint(equalTo: xTextField.topAnchor).isActive = true
        operatorTextField.leftAnchor.constraint(equalTo: xTextField.rightAnchor, constant: 12).isActive = true
        operatorTextField.widthAnchor.constraint(equalToConstant: 40).isActive = true
        operatorTextField.bottomAnchor.constraint(equalTo: xTextField.bottomAnchor).isActive = true
        
        //layout y variable UITextField
        view.addSubview(yTextField)
        yTextField.leftAnchor.constraint(equalTo: operatorTextField.rightAnchor, constant: 12).isActive = true
        yTextField.widthAnchor.constraint(equalTo: xTextField.widthAnchor).isActive = true
        yTextField.heightAnchor.constraint(equalTo: xTextField.heightAnchor).isActive = true
        yTextField.topAnchor.constraint(equalTo: xTextField.topAnchor).isActive = true
        
        //layout result UILabel
        view.addSubview(resultLabel)
        resultLabel.topAnchor.constraint(equalTo: xTextField.topAnchor).isActive = true
        resultLabel.leftAnchor.constraint(equalTo: yTextField.rightAnchor, constant: 12).isActive = true
        resultLabel.heightAnchor.constraint(equalTo: xTextField.heightAnchor).isActive = true
        resultLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        
        //layout the segmented control - let's do this in the evening lab
        view.addSubview(segmentedControl)
        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        segmentedControl.topAnchor.constraint(equalTo: xTextField.bottomAnchor, constant: 12).isActive = true
        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //compute button
        view.addSubview(computeButton)
        computeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        computeButton.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 12).isActive = true
        computeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        computeButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

}

