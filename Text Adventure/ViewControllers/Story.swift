//
//  Story.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation

class Story{
    
    
    
    //sets the title and holds everything
    var title: String
    var text: String
    var choices = [Choice]()
    var userChoices = [Choice]()
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
    
    func chooseLeft() {
        guard let currentChoice = choices.last else { return }
        text.append(currentChoice.leftStoryText)
        if let rightChoiceId = currentChoice.rightNextChoiceId, let nextChoice = findTheNextLeftChoice {
        //            addChoice(nextChoice)
        //        } else {
        //            isFinished = true
        //        }
        //    }

    }
    
//    func chooseRight() {
//        guard let currentChoice = choices.last else { return }
//        text.append(currentChoice.rightStoryText)
//        if let rightChoiceId = currentChoice.rightNextChoiceId, let nextChoice = findTheNextChoice {
//            addChoice(nextChoice)
//        } else {
//            isFinished = true
//        }
//    }

    
    func findTheNextLeftChoice() throws -> [Choice]? {
        enum currentChoiceError: Error {
            case invalidChoice
            case idk
        }
        
        guard let currentChoice = userChoices.last else {throw currentChoiceError.invalidChoice   }
        
        let nextLeftChoice = choices.filter( { return $0.id == currentChoice.leftNextChoiceId } )
        return nextLeftChoice
    }
    
}
}
