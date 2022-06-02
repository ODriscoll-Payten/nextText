//
//  PlayScreenViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit
import AVFoundation

class PlayScreenViewController: UIViewController{
    
    var story = sciFiStory
    
    var leftButtonCount:Int = 0
    
    var rightButtonCount:Int = 0
    
    var skipButtonCount:Int = 0
    
    var fantasyAllowed = false
    
    var sciFiAllowed = false
    
    var westernAllowed = false
    
    @IBOutlet weak var storyTextView: UITextView!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var muteButtonTapped: UIButton!
    
    var backGroundPlayer = AVAudioPlayer()
    
    var player: AVAudioPlayer?
    
    var playBMusic = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if fantasyAllowed == true {
            storyTextView.text = fantIntroText1
            playBMusic.toggle()
            playBMusic = true
            
        } else if sciFiAllowed == true {
            
            storyTextView.text = sciFiStart
            playBackGroundMusic(fileNamed: "space-chillout-14194.mp3")
            
        } else if westernAllowed == true {
            
            storyTextView.text = "kjasfjb"
        }
        
        
       
        
        //If skip/next is an option then right and left shouldn't be
        if skipButton.isEnabled == true{
            leftButton.isEnabled = false
            rightButton.isEnabled = false
        }
        
        if skipButtonCount == 0 {
            skipButton.backgroundColor = .gray
            skipButton.isEnabled = false
        }
        updateUI()
        playFantasyMusic(fileNamed: "FantasyMusic.mp3")
    }
    
    
    func updateUI(){
        //set the text
        //set the button tittle
        //update button count
        
    }
    
    func playFantasyMusic(fileNamed: String) {
        if fantasyAllowed == true && playBMusic == true {
            playBackGroundMusic(fileNamed: "FantasyMusic.mp3")
        } else {
            print("Music Code is not working")
        }
    }
    // Need to create more funcs like above for other music genre
    
    
    func playBackGroundMusic(fileNamed: String) {
        let url = Bundle.main.url(forResource: fileNamed, withExtension: nil)
        guard let newURL = url else {
            
            return print("Could not find file called \(fileNamed)")
        }
        do {
            backGroundPlayer = try AVAudioPlayer(contentsOf: newURL)
            backGroundPlayer.numberOfLoops = -1 // <- -1 makes it so it will run until we stop it
            backGroundPlayer.prepareToPlay()
            backGroundPlayer.play()
            
        }
        
        catch let error as NSError {
            print (error.description)
        }
    }
    
    
    
    @IBAction func unwindToPlayScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func leftButtonTapped(_ sender: Any) {
//        story.chooseLeft()
        updateUI()
        leftButtonCount = leftButtonCount + 1
        updateUI()
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        rightButtonCount = rightButtonCount + 1
        updateUI()
        
    }
    
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        skipButtonCount = skipButtonCount - 1
        updateUI()
    }
    
    // Need Toggle to work for Mute
    @IBAction func muteButtonTapped(_ sender: Any) {
        playBMusic.toggle()
        
        if playBMusic == false {
            backGroundPlayer.stop()
            muteButtonTapped.setTitle("Off", for: .normal)

        } else {
            backGroundPlayer.play()
            muteButtonTapped.setTitle("On", for: .normal)
        }
    }
    
    
    
}//end
