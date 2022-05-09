//
//  GenreSelectionViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit

class GenreSelectionViewController: UIViewController {
    
    @IBOutlet weak var choseFantasyGenreButton: UIButton!
    
    
    @IBOutlet weak var choseWesternGenreButton: UIButton!
    
    
    @IBOutlet weak var choseSciFiGenreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    
    //plays SciFi function
    @IBAction func choseSciFiButtonTapped(_ sender: Any) {
        playSciFiStory()
    }
    
    
    
}
