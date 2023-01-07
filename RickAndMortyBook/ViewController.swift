//
//  ViewController.swift
//  RickAndMortyBook
//
//  Created by Mustafa Adnan Tatlıcı on 7.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var mySanchezs = [sanchezler]()
    var chosenSanchez : sanchezler?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let rick = sanchezler(sanchezlerName: "Rick Sanchez", sanchezlerJob: "Scientists", sanchezlerImage: UIImage(named: "rick")!)
        let morty = sanchezler(sanchezlerName: "Morty Smith", sanchezlerJob: "Student", sanchezlerImage: UIImage(named: "morty")!)
        let summer = sanchezler(sanchezlerName: "Summer Smith", sanchezlerJob: "Sister", sanchezlerImage: UIImage(named: "summer")!)
        let jerry = sanchezler(sanchezlerName: "Jerry Smith", sanchezlerJob: "Advertiser", sanchezlerImage: UIImage(named: "jerry")!)
        let beth = sanchezler(sanchezlerName: "Beth Smith", sanchezlerJob: "Surgeon", sanchezlerImage: UIImage(named: "beth")!)
        
        mySanchezs.append(rick)
        mySanchezs.append(morty)
        mySanchezs.append(summer)
        mySanchezs.append(jerry)
        mySanchezs.append(beth)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySanchezs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySanchezs[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSanchez = mySanchezs[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSanchez = chosenSanchez
            
        }
    }
}

