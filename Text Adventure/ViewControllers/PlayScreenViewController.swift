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
    
    var backGroundPlayer = AVAudioPlayer()
    
    var player: AVAudioPlayer?
    
    var playBMusic = false
    
    
    
    @IBOutlet weak var storyTextView: UITextView!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var muteButtonTapped: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        muteButtonTapped.image = UIImage(systemName: "speaker.wave.3.fill")
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
                    if currentChoice?.isBadEnd == true {
                        skipButton.setTitle("YOU LOST - TRY AGAIN", for: .normal)
                    } else if currentChoice?.isGoodEnd == true {
                        skipButton.setTitle("YOU WON - TRY AGAIN", for: .normal)
                    }
                    shake()
                }
                leftButton.isEnabled = false
                rightButton.isEnabled = false
                leftButton.backgroundColor = .gray
                rightButton.backgroundColor = .gray
            }
        }
    }
    
    
    // Func that plays the Music
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
    
    func leftBounce() {
        UIView.animate(withDuration: 0.3,delay: 0, options: [.curveLinear], animations: {
            let bounce = CGAffineTransform(scaleX: 3, y: 3)
            self.leftButton.transform = bounce
            self.leftButton.transform = CGAffineTransform.identity
        })
    }
    
    func rightBounce() {
        UIView.animate(withDuration: 0.3,delay: 0, options: [.curveLinear], animations: {
            let bounce = CGAffineTransform(scaleX: 3, y: 3)
            self.rightButton.transform = bounce
            self.rightButton.transform = CGAffineTransform.identity
        })
    }
    
    func shake() {
        UIView.animate(withDuration: 0.5, animations: {
            let moveRight = CGAffineTransform(translationX: 40.0, y: 0.0)
            let bounce = CGAffineTransform(scaleX: 2.5, y: 2.5)
            
            self.skipButton.transform = bounce
            self.skipButton.transform = moveRight
            
            self.leftButton.transform = CGAffineTransform.identity
        }) {(_) in
            UIView.animate(withDuration: 0.6, animations: {
                let moveLeft = CGAffineTransform(translationX: -20.0, y: 0.0)
            
                self.skipButton.transform = moveLeft
                
                self.skipButton.transform = CGAffineTransform.identity
            }, completion: {(_) in
                UIView.animate(withDuration: 0.3, animations: {
                    let moveCenter = CGAffineTransform(translationX: 0.0, y: 0.0)
                    self.skipButton.transform = moveCenter
                    self.skipButton.transform = CGAffineTransform.identity
                })
            })
        }
    }
    
    @IBAction func unwindToPlayScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    
    @IBAction func leftButtonTapped(_ sender: Any) {
        if let leftChoice = choices.last?.leftChoice{
            choices.append(leftChoice)
        }
        leftBounce()
        updateUI()
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        if let rightChoice = choices.last?.rightChoice
        {
            choices.append(rightChoice)
        }
        rightBounce()
        updateUI()
    }
    
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        choices.removeAll()
        choices.append(currentStory!.startNode)
        updateUI()
    }
    
    
    
    @IBAction func muteButtonTapped(_ sender: Any) {
        playBMusic.toggle()
        
        if playBMusic == false {
            backGroundPlayer.stop()
            muteButtonTapped.image = UIImage(systemName: "speaker.slash.fill")
            
        } else {
            backGroundPlayer.play()
            muteButtonTapped.image = UIImage(systemName: "speaker.wave.3.fill")
            
        }
    }
}
