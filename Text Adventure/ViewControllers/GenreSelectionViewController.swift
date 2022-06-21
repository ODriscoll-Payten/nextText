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
    
    
    //    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let welcomeAlertController = UIAlertController(title: "Text Adventure", message: "Welcome Back!", preferredStyle: .alert)
        
        let backAction = UIAlertAction(title: "Good To Be Back", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            NSLog("Good To Be Back Pressed")
        }
        
        let tutorialAction = UIAlertAction(title: "Tutorial", style: UIAlertAction.Style.destructive) {
            UIAlertAction in
            NSLog("Tutorial Pressed")
            if self.choseTutorialButton.isHidden == true{
                self.choseTutorialButton.isHidden = false
            }
        }
        
        
        welcomeAlertController.addAction(tutorialAction)
        welcomeAlertController.addAction(backAction)
        

        
        self.present(welcomeAlertController, animated: true, completion: nil)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
