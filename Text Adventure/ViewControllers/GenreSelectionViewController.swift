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
    
    
//    var backGroundPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        fantasyGenreDescription.text = "Vague Description about the Fantasy Story"
        scifiGenreDescription.text = "Vague Description about the Sci-Fi Story"
        westernGenreDescription.text = "Vague Description about a Western"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Plays the Background Music
//    func playBackGroundMusic(fileNamed: String) {
//        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
//        guard let newURL = url else {
//
//            return print("Could not find file called \(fileNamed)")
//        }
//        do {
//            backGroundPlayer = try AVAudioPlayer(contentsOf: newURL)
//            backGroundPlayer.numberOfLoops = -1 // <- -1 makes it so it will run until we stop it
//            backGroundPlayer.prepareToPlay()
//            backGroundPlayer.play()
//            
//        }
//
//        catch let error as NSError {
//            print (error.description)
//        }
//    }
    
    @IBAction func unwindToGenreSelection(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    //plays Fantasy function
    @IBAction func choseFantasyButtonTapped(_ sender: Any) {
//        playBackGroundMusic(fileNamed: "FantasyMusic.mp3") // <- plays selected music when Button tapped :)
    }
    
    //plays SciFi function
    @IBAction func choseSciFiButtonTapped(_ sender: Any) {
//        playBackGroundMusic(fileNamed: "space-chillout-14194")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fantasySelectedSegue"{
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
