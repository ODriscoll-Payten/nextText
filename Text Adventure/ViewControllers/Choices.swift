//
//  Choices.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation
class ChoiceNode {
    let text: String
    let leftChoice: ChoiceNode
    let rightChoice: ChoiceNode
    let parent: ChoiceNode?
    let leftButtonTitle: String
    let rightButtonTitle: String
    
    init(text: String, leftChoice: ChoiceNode, rightChoice: ChoiceNode, parent: ChoiceNode?, leftButtonTitle: String, rightButtonTitle: String) {
        self.text = text
        self.leftChoice = leftChoice
        self.rightChoice = rightChoice
        self.parent = parent
        self.leftButtonTitle = leftButtonTitle
        self.rightButtonTitle = rightButtonTitle
    }
}

