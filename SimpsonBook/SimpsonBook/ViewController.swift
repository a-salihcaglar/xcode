//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ahmet Salih Çağlar on 14.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Objects
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nuclear Safety", imageInit: UIImage(named: "homerSimpson")!)
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "margeSimpson")!)
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named:"bartSimpson")!)
        let lisa = Simpson(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisaSimpson")!)
        let maggie = Simpson(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggieSimpson")!)
        
        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(bart)
        simpsonArray.append(lisa)
        simpsonArray.append(maggie)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonArray[indexPath.row]
        
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}

