//
//  GenreSelectionViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit

class GenreSelectionViewController: UIViewController {

    
    @IBOutlet weak var chooseFantasyButton: UIButton!
    
    @IBOutlet weak var chooseWesternButton: UIButton!
    
    @IBOutlet weak var chooseSciFiButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}
