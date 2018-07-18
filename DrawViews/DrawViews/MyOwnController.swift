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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(headerView)
        
        // Create the anchors
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        
        /* Ancho y largo van a 1*/
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.20).isActive = true
    }
    
}
