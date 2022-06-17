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
    
    @IBOutlet weak var choseTutorialButton: UIButton!
    
    @IBOutlet weak var choseFantasyGenreButton: UIButton!
    @IBOutlet weak var choseWesternGenreButton: UIButton!
    @IBOutlet weak var choseSciFiGenreButton: UIButton!
    
        
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func hideTutotrial(){
        let isShowingTutorial = UserDefaults.standard.isShowingTutorial
        choseSciFiGenreButton.isHidden = isShowingTutorial
        choseFantasyGenreButton.isHidden = isShowingTutorial
        choseWesternGenreButton.isHidden = isShowingTutorial
        choseTutorialButton.isHidden = !isShowingTutorial
    }
    
    
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        hideTutotrial()
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let playVC = segue.destination as? PlayScreenViewController else { return}
        if segue.identifier == "fantasySelectedSegue"{
            playVC.currentStory = fantasyStory
            hideTutotrial()
            
        } else if segue.identifier == "sciFiSelectedSegue"{
            playVC.currentStory = sciFiStory
            hideTutotrial()
            
        } else if segue.identifier == "westernSelectedSegue"{
            playVC.currentStory = westernStory
            hideTutotrial()
            
        }else if segue.identifier == "tutorialSegue"{
            playVC.currentStory = tutorial
            
            UserDefaults.standard.isShowingTutorial = false
            
            hideTutotrial()
        }
    }
}//end
