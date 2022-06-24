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
    

    @IBOutlet var tutorialButton: UIBarButtonItem!
    
    @IBOutlet weak var choseFantasyGenreButton: UIButton!
    @IBOutlet weak var choseWesternGenreButton: UIButton!
    @IBOutlet weak var choseSciFiGenreButton: UIButton!
    
    
    @IBOutlet weak var choseHorrorGenreButton: UIButton!
    
    
    
    //    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
  
    
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let playVC = segue.destination as? PlayScreenViewController else { return}
        if segue.identifier == "fantasySelectedSegue"{
            playVC.currentStory = fantasyStory
            
            
        } else if segue.identifier == "sciFiSelectedSegue"{
            playVC.currentStory = sciFiStory
            
            
        } else if segue.identifier == "westernSelectedSegue"{
            playVC.currentStory = westernStory
           
            
        }else if segue.identifier == "horrorSelectedSegue"{
            playVC.currentStory = horrorStory
            
            
        } else if segue.identifier == "tutorialSegue"{
            playVC.currentStory = tutorial
            
        }
    }
}//end
