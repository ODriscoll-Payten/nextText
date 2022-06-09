//
//  GenreSelectionViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit
import AVFoundation

class GenreSelectionViewController: UIViewController {
    
    @IBOutlet weak var choseFantasyGenreButton: UIButton!
    @IBOutlet weak var choseWesternGenreButton: UIButton!
    @IBOutlet weak var choseSciFiGenreButton: UIButton!
    
    @IBOutlet weak var fantasyGenreDescription: UILabel!
    @IBOutlet weak var scifiGenreDescription: UILabel!
    
    
    @IBOutlet weak var westernGenreDescription: UILabel!
    
    @IBOutlet weak var fantasyCoverImage: UIImageView!
    
    
    @IBOutlet weak var scifiCoverImage: UIImageView!
    
    @IBOutlet weak var westernCocerImage: UIImageView!
    //    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        
        
        fantasyGenreDescription.text = "Vague Description about the Fantasy Story"
        scifiGenreDescription.text = "Vague Description about the Sci-Fi Story"
        westernGenreDescription.text = "Vague Description about a Western"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let playVC = segue.destination as? PlayScreenViewController else { return}
        if segue.identifier == "fantasySelectedSegue"{
            playVC.currentStory = westernStory
            
        } else if segue.identifier == "sciFiSelectedSegue"{
            playVC.currentStory = sciFiStory
            
        } else if segue.identifier == "westernSelectedSegue"{
            playVC.currentStory = westernStory
        }
    }
    
}//end
