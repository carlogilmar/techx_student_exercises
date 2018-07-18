//
//  MyOwnController.swift
//  DrawViews
//
//  Created by Carlo Gilmar on 17/07/18.
//  Copyright © 2018 Lets Build That App. All rights reserved.
//

import UIKit

class MyOwnController: UIViewController {
    
    let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "HOLA PERROS"
        label.textAlignment = .center
        label.font = UIFont(name: label.font.fontName, size: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(headerView)
        view.addSubview(label)
        
        // Create the anchors
        
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.20).isActive = true
        
        label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10).isActive = true
        label.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.9).isActive = true
        label.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.20).isActive = true
        
    }
    
}
