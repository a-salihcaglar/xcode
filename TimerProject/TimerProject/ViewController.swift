//
//  ViewController.swift
//  TimerProject
//
//  Created by Ahmet Salih Çağlar on 5.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 10
    
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeDecrease), userInfo: nil, repeats: true)
    }
    
    @objc func timeDecrease(){
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Time's Over!"
        }
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("Button clicked!")
    }
    
}

