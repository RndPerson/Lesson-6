//
//  ImageViewController.swift
//  Lesson 6
//
//  Created by Guest User on 22.12.2020.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            imageView.image = image
        }
}
