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
    
    //var story = sciFiStory
    var choices = [ChoiceNode]()
        
    var fantasyAllowed = false
    
    var sciFiAllowed = false
    
    var westernAllowed = false
    
    var currentStory: Story?
    
    var currentChoice: ChoiceNode?
  
    @IBOutlet weak var storyTextView: UITextView!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var muteButtonTapped: UIBarButtonItem!
    
    var backGroundPlayer = AVAudioPlayer()
    
    var player: AVAudioPlayer?
    
    var playBMusic = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        muteButtonTapped.image = UIImage(systemName: "mic.fill")
        choices.append(currentStory!.startNode)
        playMusic()
        updateUI()
        skipButton.isEnabled = false
    }
    
    func playMusic(){
        playBackGroundMusic(fileNamed: currentStory!.musicFileName)
    }
    
    func updateUI(){ 
       var currentStoryText = ""
        for choice in choices {
            currentStoryText += choice.text
            currentStoryText += "\n\n"
            leftButton.isEnabled = true
            rightButton.isEnabled = true
            skipButton.isEnabled = false
        }
        storyTextView.text = currentStoryText
        if let last = choices.last{
            leftButton.setTitle(last.leftButtonTitle, for: .normal)
            rightButton.setTitle(last.rightButtonTitle, for: .normal)
            currentChoice = last
            if currentChoice?.leftChoice == nil && currentChoice?.rightChoice == nil{
                skipButton.isEnabled = true
                if skipButton.isEnabled == true{
                    skipButton.setTitle("Try Again Bozo", for: .normal)
                }
                leftButton.isEnabled = false
                rightButton.isEnabled = false
                leftButton.backgroundColor = .gray
                rightButton.backgroundColor = .gray
            }
        }
        
    }
    
    // Func that will play the Genre Music
    
    // This Func plays the Fantasy Music
  
   
    
    
    
    // Func that plays the Music for a
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
        
        if let leftChoice = choices.last?.leftChoice{
            choices.append(leftChoice)
        }
        updateUI()
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {

        if let rightChoice = choices.last?.rightChoice
        {
            choices.append(rightChoice)
        }
        updateUI()
        
    }
    
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        choices.removeAll()
        choices.append(currentStory!.startNode)
        updateUI()
    }
    
    // Need Toggle to work for Mute
   
    @IBAction func muteButtonTapped(_ sender: Any) {
        playBMusic.toggle()
        
        if playBMusic == false {
            backGroundPlayer.stop()
            muteButtonTapped.image = UIImage(systemName: "mic.slash.fill")

        } else {
            backGroundPlayer.play()
            muteButtonTapped.image = UIImage(systemName: "mic.fill")        }
    }
    
    
    
}//end
