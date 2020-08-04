//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Ahmet Salih Çağlar on 4.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mySecondLabel: UILabel!
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName
    }
}
