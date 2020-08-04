//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Ahmet Salih Çağlar on 7.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkObject = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkObject
    }
}
