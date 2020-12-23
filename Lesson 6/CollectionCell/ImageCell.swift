//
//  ImageCell.swift
//  Lesson 6
//
//  Created by Guest User on 22.12.2020.
//

import UIKit

class ImageCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func prepareForReuse () {
        imageView.image = nil
    }
    
    func setImageWithURLSession(photoModel: Photo, completion: @escaping (UIImage?) -> Void) {
        if let image = photoModel.image {
            imageView.image = image
            return
        }
        
        guard let imageURL = URL(string: photoModel.url) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, _ in
            if let data = data, let image = UIImage (data: data) {
                completion(image)
                DispatchQueue.main.async {
                    self.imageView.image = image
                }
            }
        }.resume()
    }
}
