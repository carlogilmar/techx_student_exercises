//
//  ViewController.swift
//  SudokuExample
//
//  Created by Brian Voong on 8/7/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit

class SudokuCell: UICollectionViewCell {
    @IBOutlet weak var textField: UITextField!
}

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var numbers = [[Int]]()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 9, height: view.frame.width / 9)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 81
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! SudokuCell
        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .yellow
        cell.textField.text = "\(indexPath.item)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

