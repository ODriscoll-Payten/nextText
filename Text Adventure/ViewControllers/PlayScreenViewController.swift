//
//  PlayScreenViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit

class PlayScreenViewController: UIViewController{
    
    var story = sciFiStory
    
    var leftButtonCount:Int = 0
    
    var rightButtonCount:Int = 0
    
    var skipButtonCount:Int = 0
    
    var fantasyAllowed = false
    
    var sciFiAllowed = false
    
    var westernAllowed = false
    
    
    let sciFiChoicesLeft = [sciFiDecision1Option1,sciFiDecision2Option1, sciFiDecision3Option1]
    
    let sciFiChoicesRight = [sciFiDecision1Option2,sciFiDecision2Option2, sciFiDecision3Option2]
    
    public var choiceIndex = 0
    
    
    @IBOutlet weak var storyTextView: UITextView!
    
    
    @IBOutlet weak var leftButton: UIButton!
    
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    @IBOutlet weak var skipButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if fantasyAllowed == true{
            storyTextView.text = fantIntroText1
            
        } else if sciFiAllowed == true{
            storyTextView.text = "Here SHOULD be the text"
            
        } else if westernAllowed == true{
            storyTextView.text = "kjasfjb"
        }
        
        
        func choiceIndexNav (){
            if choiceIndex == 0{
                leftButton.setTitle(sciFiChoicesLeft[0], for: .normal)
                rightButton.setTitle(sciFiChoicesRight[0], for: .normal)
            } else if choiceIndex == 1{
                leftButton.setTitle(sciFiChoicesLeft[1], for: .normal)
                rightButton.setTitle(sciFiChoicesRight[1], for: .normal)
            } else if choiceIndex == 2{
                leftButton.setTitle(sciFiChoicesLeft[2], for: .normal)
                rightButton.setTitle(sciFiChoicesRight[2], for: .normal)
            }
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
        updateUI()
    }
    
    
    func updateUI(){
        //set the text
        //set the button tittle
        //update button count
        
    }
    
    
    
    
    
    
    @IBAction func unwindToPlayScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func leftButtonTapped(_ sender: Any) {
        story.chooseLeft()
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
    
    
    
}//end
