//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Ahmet Salih Çağlar on 14.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    override func viewDidLoad() {
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        super.viewDidLoad()
    }
}
