//
//  ViewController.swift
//  ImageGalleryPhotoSelector
//
//  Created by Brian Voong on 8/7/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit
// need UIImagePickerControllerDelegate and UINavigationControllerDelegate
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBAction func showImageSelector(_ sender: Any) {
        print("Lets show image selector")
        
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBOutlet weak var mySelectedImageView: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // in the case of an edited image, we use key "UIImagePickerControllerEditedImage"
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage {
            
            mySelectedImageView.image = editedImage
            
        } else {
            
            let image = info["UIImagePickerControllerOriginalImage"] as? UIImage
            mySelectedImageView.image = image
        }
        
        
        //dismiss the image picker right after you select an image, makes the imagePicker go away
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

