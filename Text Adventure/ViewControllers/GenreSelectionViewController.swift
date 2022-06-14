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
    
    var shouldTutorialShow = false
    
    @IBOutlet weak var choseTutorialButton: UIButton!
    
    @IBOutlet weak var choseFantasyGenreButton: UIButton!
    @IBOutlet weak var choseWesternGenreButton: UIButton!
    @IBOutlet weak var choseSciFiGenreButton: UIButton!
    

    //    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
  
//        choseFantasyGenreButton.layer.cornerRadius = 25
//        choseSciFiGenreButton.layer.cornerRadius = 25
//        choseWesternGenreButton.layer.cornerRadius = 25
        if shouldTutorialShow == true{
            choseFantasyGenreButton.isEnabled = false
            choseWesternGenreButton.isEnabled = false
            choseSciFiGenreButton.isEnabled = false
            
        } else if shouldTutorialShow == false{
            choseFantasyGenreButton.isEnabled = true
            choseWesternGenreButton.isEnabled = true
            choseSciFiGenreButton.isEnabled = true
        }
        
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
            playVC.currentStory = fantasyStory
            
        } else if segue.identifier == "sciFiSelectedSegue"{
            playVC.currentStory = sciFiStory
            
        } else if segue.identifier == "westernSelectedSegue"{
            playVC.currentStory = westernStory
            
        }else if segue.identifier == "tutorialSegue"{
            playVC.currentStory = tutorial
            shouldTutorialShow = false
            UserDefaults.standard.set(shouldTutorialShow, forKey: "tutorialOn?")
        }
    }
    
}//end
