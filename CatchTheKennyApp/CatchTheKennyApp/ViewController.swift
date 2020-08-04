//
//  ViewController.swift
//  CatchTheKennyApp
//
//  Created by Ahmet Salih Çağlar on 5.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    var highScore = 0
    var counter = 0
    var timer = Timer()
    var hideTimer = Timer()
    var kennyArray = [UIImageView]()
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighscore == nil{
            highScore = 0
            highscoreLabel.text = "Highscore: \(highScore)"
        }
        
        if let newScore = storedHighscore as? Int{
            highScore = newScore
            highscoreLabel.text = "Highscore: \(highScore)"
        }
        
        scoreLabel.text = "Skor: \(score)"
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        kennyArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9]
        
        counter = 30
        timeLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(hideKenny), userInfo: nil, repeats: true)
        
    }
    
    @objc func hideKenny(){
        for kenny in kennyArray{
            kenny.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(kennyArray.count - 1)))
        
        kennyArray[random].isHidden = false
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Skor: \(score)"
    }
    
    @objc func countDown(){
        counter -= 1
        timeLabel.text = String(counter)
        
        if counter == 0{
            timer.invalidate()
            hideTimer.invalidate()
            timeLabel.text = "Süre doldu!"
            
            if self.score > self.highScore{
                self.highScore = self.score
                highscoreLabel.text = "Highscore: \(highScore)"
                UserDefaults.standard.set(highScore, forKey: "highscore")
            }
            
            let alert = UIAlertController(title: "Süre Doldu!", message: "Tekrar oynamak ister misiniz?", preferredStyle: UIAlertController.Style.alert)
            let yesButton = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { (UIAlertAction) in
                self.score = 0
                self.scoreLabel.text = "Skor: \(self.score)"
                self.counter = 30
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(self.hideKenny), userInfo: nil, repeats: true)
            }
            let noButton = UIAlertAction(title: "Hayır", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(yesButton)
            alert.addAction(noButton)
            self.present(alert, animated: true)
            
        }
    }

}
