//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ahmet Salih Çağlar on 5.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var isManzara1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePicture(){
        if isManzara1{
            imageView.image = UIImage(named: "manzara2")
            myLabel.text = "Manzara 2"
            isManzara1 = false
        }else{
            imageView.image = UIImage(named: "manzara1")
            myLabel.text = "Manzara 1"
            isManzara1 = true
        }
    }
    
}
