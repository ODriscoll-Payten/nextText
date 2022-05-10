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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fantasySelectedSegue"{
            //then do set up here instead
            if let playVC = segue.destination as? PlayScreenViewController{
                playVC.leftButtonCount = 0
                playVC.rightButtonCount = 0
                playVC.skipButtonCount = 0
                playVC.fantasyAllowed = true
                playVC.sciFiAllowed = false
                playVC.westernAllowed = false
            }
            
        } else if segue.identifier == "sciFiSelectedSegue"{
            if let playVC = segue.destination as? PlayScreenViewController{
                playVC.leftButtonCount = 0
                playVC.rightButtonCount = 0
                playVC.skipButtonCount = 0
                playVC.fantasyAllowed = false
                playVC.sciFiAllowed = true
                playVC.westernAllowed = false
                
            } else if segue.identifier == "westernSelectedSegue"{
                if let playVC = segue.destination as? PlayScreenViewController{
                    playVC.leftButtonCount = 0
                    playVC.rightButtonCount = 0
                    playVC.skipButtonCount = 0
                    playVC.fantasyAllowed = false
                    playVC.sciFiAllowed = false
                    playVC.westernAllowed = true
                }
            }
        }
    }
    
}//end
