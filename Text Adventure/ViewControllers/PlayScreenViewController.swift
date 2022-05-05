//
//  PlayScreenViewController.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/4/22.
//

import Foundation
import UIKit

class PlayScreenViewController: UIViewController {

    @IBOutlet weak var storyTextView: UITextView!
    
    
    @IBOutlet weak var leftButton: UIButton!
    
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    @IBOutlet weak var skipButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToPlayScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}
