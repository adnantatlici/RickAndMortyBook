//
//  DetailsVC.swift
//  RickAndMortyBook
//
//  Created by Mustafa Adnan Tatlıcı on 7.01.2023.
//

import UIKit

class DetailsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!

    var selectedSanchez : sanchezler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSanchez?.name
        jobLabel.text = selectedSanchez?.job
        imageView.image = selectedSanchez?.image

    }
    

    



}
