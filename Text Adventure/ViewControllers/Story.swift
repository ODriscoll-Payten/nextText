//
//  Story.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation

class Story {
    //sets the title and holds everything
    var title: String
    var text: String
    var choices = [Choice]()
    var isFinished = false
    
    init(title: String, text: String, choices: [Choice] = []) {
        self.title = title
        self.text = text
        self.choices = choices
    }
    
    func addChoice(_ choice: Choice) {
        choices.append(choice)
//        text.append(choice.text)
    }
    
//    func chooseLeft() {
//        guard let currentChoice = choices.last else { return }
//        text.append(currentChoice.leftStoryText)
//        if let leftChoiceId = currentChoice.leftNextChoiceId, let nextChoice = findTheNExtChoice {
//            addChoice(nextChoice)
//        } else {
//            isFinished = true
//        }
//    }
    
//    func chooseRight() {
//        guard let currentChoice = choices.last else { return }
//        text.append(currentChoice.rightStoryText)
//        if let rightChoiceId = currentChoice.rightNextChoiceId, let nextChoice = findTheNExtChoice {
//            addChoice(nextChoice)
//        } else {
//            isFinished = true
//        }
//    }
    
}//end

