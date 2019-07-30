//
//  PhotoDetailViewController.swift
//  View Finder
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
     var photo : Photos? = nil

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let realPhoto = photo {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                ImageView.image = cellPhotoImage
                }
            }
        }
    }

    
}
