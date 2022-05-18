//
//  Pages.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/16/22.
//

import Foundation

struct SciFiPages{
    //keep track of text display
    let sciFiChoicesLeft = [sciFiDecision1Option1,sciFiDecision2Option1, sciFiDecision3Option1]
    
    let sciFiChoicesRight = [sciFiDecision1Option2,sciFiDecision2Option2, sciFiDecision3Option2]
    
    var choiceIndex = 0
    
    mutating func choiceIndexNav(){
        choiceIndex = self.choiceIndex + 1
        
    }
}


//    func getId(identifier:String) -> identifier{
//        forEach Page in sciFiPages{
//            let identifier = UUID().uuidString
//            return identifier
//        }
//    }
    
