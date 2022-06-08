//
//  Choices.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation
class ChoiceNode{
    let text: String
    let leftChoice: ChoiceNode?
    let rightChoice: ChoiceNode?
    var parent: ChoiceNode?
    let leftButtonTitle: String?
    let rightButtonTitle: String?
    
    init(text: String, leftChoice: ChoiceNode?, rightChoice: ChoiceNode?, leftButtonTitle: String?, rightButtonTitle: String?) {
    
        self.text = text
        self.leftChoice = leftChoice
        self.rightChoice = rightChoice
        self.leftButtonTitle = leftButtonTitle
        self.rightButtonTitle = rightButtonTitle
    }
}

