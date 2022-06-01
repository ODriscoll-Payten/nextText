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
    }
    
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        rightButtonCount = rightButtonCount + 1
    }
    
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        skipButtonCount = skipButtonCount - 1
    }
    
    
    
    
    
    func playFantasyStory(){
        
        
        
    }//end
    
    
    
    
    func playWesternStory(){
        
        
        
    }//end
    
    
    
    
    func playSciFiStory(){
        
        
        
        
        
    }//end
    
}//end
