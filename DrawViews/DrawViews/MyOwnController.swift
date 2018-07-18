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
    
    let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
    let usernameView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let pic1View: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let pic2View: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let pic3View: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setHeaderAndTitle()
    }
    
    func setHeaderAndTitle(){
        
        view.addSubview(headerView)
        view.addSubview(label)
        view.addSubview(profileView)
        view.addSubview(usernameView)
        view.addSubview(pic1View)
        view.addSubview(pic2View)
        //view.addSubview(pic3View)
        
        // Create the anchors
        
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        headerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.20).isActive = true
        
        label.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10).isActive = true
        label.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 0.9).isActive = true
        label.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.20).isActive = true
       
        profileView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant:10).isActive = true
        profileView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        profileView.widthAnchor.constraint(equalTo: self.headerView.widthAnchor, multiplier: 0.40).isActive = true
        profileView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.20).isActive = true
        
        usernameView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 5).isActive = true
        usernameView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        usernameView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.60).isActive = true
        usernameView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.05).isActive = true
        
        pic1View.topAnchor.constraint(equalTo: usernameView.bottomAnchor, constant:15).isActive = true
        pic1View.centerXAnchor.constraint(equalTo: usernameView.centerXAnchor, constant: -100).isActive = true
        pic1View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.30).isActive = true
        pic1View.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
        pic2View.centerYAnchor.constraint(equalTo: pic1View.centerYAnchor).isActive = true
        pic2View.centerXAnchor.constraint(equalTo: pic1View.centerXAnchor, constant: 100).isActive = true
        pic2View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.30).isActive = true
        pic2View.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15).isActive = true
        
    }
}
