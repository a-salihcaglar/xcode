//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ahmet Salih Çağlar on 6.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

//Table View varsa, UITableViewDelegate ve UITableViewDataSource eklenmek zorunda!
//Table View varsa, tableView.delegate ve tableView.dataSource self'e eşitlenmek zorunda!
//Table View varsa, cellForRowAt indexPath ve numberOfRowsInSection fonksiyonları konulmak zorunda!

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        //Landmark Book Data's
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Çırağan  Sarayı")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Stonehenge")
        
        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "cıragansarayi")!)
        landmarkImages.append(UIImage(named: "greatwall")!)
        landmarkImages.append(UIImage(named: "stonehenge")!)
        
        navigationItem.title = "Landmark Book"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController"{
            let destinationVC = segue.destination as! ImageViewController
            
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkObject = chosenLandmarkImage
        }
    }
}

