//
//  PlayScreenViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit

class PlayScreenViewController: UIViewController{
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if fantasyAllowed == true{
            storyTextView.text = fantIntroText1
            playFantasyStory()
            
        } else if sciFiAllowed == true{
            storyTextView.text = sciFiLine1
            playSciFiStory()
            
        } else if westernAllowed == true{
            storyTextView.text = "kjasfjb"
            playWesternStory()
        }
        
        //If skip/next is an option then right and left shouldn't be
        if skipButton.isEnabled == true{
            leftButton.isEnabled = false
            rightButton.isEnabled = false
        }
        
        if skipButtonCount == 0{
            skipButton.backgroundColor = .gray
            skipButton.isEnabled = false
        }
    }

    
    @IBAction func unwindToPlayScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func leftButtonTapped(_ sender: Any) {
        leftButtonCount = leftButtonCount + 1
        buttonCheck()
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        rightButtonCount = rightButtonCount + 1
        buttonCheck()
    }
    
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        skipButtonCount = skipButtonCount - 1
        buttonCheck()
    }
    
    
    
    func buttonCheck(){
        playSciFiStory()
    }
    
    
    
    
    func playFantasyStory(){
        
    }
    
    func playWesternStory(){
        
    }
    
    func playSciFiStory(){
        skipButtonCount = 1
        print("here")
        skipButton.setTitle("NEXT", for: .normal)
        if skipButtonCount == 0{
            print("here")
            storyTextView.text = sciFiline1AndAHalf
            leftButton.setTitle("RETURN TO POD", for: .normal)
            rightButton.setTitle("WALK AROUND", for: .normal)
            //return to pod
            if leftButtonCount == 1{
                storyTextView.text = sciFiLine2
                skipButtonCount = skipButtonCount + 1
                skipButton.setTitle("YOU DIED", for: .normal)
                if skipButtonCount == 0{
                    self.performSegue(withIdentifier: "endingSegue", sender: self)
                }
            }
            //walk around
            if rightButtonCount == 1{
                storyTextView.text = sciFiLine3
                leftButton.setTitle("LET'S GRAB A COFFEE", for: .normal)
                rightButton.setTitle("I WANNA SEE MORE OF THE SHIP", for: .normal)
                //grab a coffee
                if leftButtonCount == 1{
                    storyTextView.text = sciFiLine4
                    leftButton.setTitle("BREAK AWAY", for: .normal)
                    rightButton.setTitle("LISTEN TO HIM", for: .normal)
                    //break away
                    if leftButtonCount == 2{
                        storyTextView.text = sciFiLine5
                        skipButtonCount = skipButtonCount + 1
                        skipButton.setTitle("YOU DIED", for: .normal)
                        if skipButtonCount == 0{
                            self.performSegue(withIdentifier: "endingSegue", sender: self)
                        }
                    }
                }
                //listen to him
                if rightButtonCount == 2{
                    storyTextView.text = sciFiLine6
                    skipButtonCount = skipButtonCount + 2
                    if skipButtonCount == 1{
                        storyTextView.text = sciFiline6AndAHalf
                        skipButton.setTitle("YOU SURVIVED", for: .normal)
                        if skipButtonCount == 0{
                            self.performSegue(withIdentifier: "endingSegue", sender: self)
                        }
                    }
                }
                //I wanna see more of the ship
                if rightButtonCount == 2{
                    storyTextView.text = sciFiLine7
                    skipButtonCount = skipButtonCount + 2
                    if skipButtonCount == 1{
                        storyTextView.text = sciFiLine8
                        skipButton.setTitle("YOU SURVIVED", for: .normal)
                        if skipButtonCount == 0 {
                            //unwind
                            self.performSegue(withIdentifier: "endingSegue", sender: self)
                        }
                    }
                }
            }
        }
    }
}
