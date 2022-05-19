//
//  Choices.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation

struct Choice {
    let id:String
    
    let leftButtonText:String
    let rightButtonText:String
    
    let leftStoryText:String
    let rightStoryText:String
    
    let leftNextChoiceId:String?
    let rightNextChoiceId:String?
}
