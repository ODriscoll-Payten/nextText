//
//  StartScreenViewController.swift
//  Text Adventure
//
//  Created by Katy Dunn on 6/22/22.
//

import Foundation
import UIKit
class StartScreenViewController: UIViewController {
    
    
    override func viewDidLoad() {
        let startScreenBackgroundImage = UIImageView(frame: UIScreen.main.bounds)
        startScreenBackgroundImage.image = UIImage(named:"CoverImageOne")
        startScreenBackgroundImage.contentMode = .scaleToFill
        view.insertSubview(startScreenBackgroundImage, at: 0)
    }
    
    
}
