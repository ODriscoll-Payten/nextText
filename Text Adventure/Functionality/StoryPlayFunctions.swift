//
//  StoryPlayFunctions.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/6/22.
//

import Foundation
import UIKit


let westernStory = Story(title: "Western", image: "yeehaw2.jpeg", musicFileName: "last-stand-108860.mp3", startNode: westernIntroNode)
//let fantasyStory = Story(title: "Fantasy", image: "", musicFileName: "FantasyMusic.mp3", startNode: fantIntroNode)
//space-chillout-14194.mp3

let sciFiStory = Story(title: "Out Of Oxygen", image: "sciFi2.jpeg", musicFileName: "space-chillout-14194.mp3", startNode: sciFiStartNode)

let fantasyStory = Story(title: "Fantasy", image: "fantIMG.jpeg", musicFileName: "FantasyMusic.mp3", startNode: fantIntroNode)

let tutorial = Story(title: "Tutorial", image: "TutorialBackground.jpeg", musicFileName: "peaceful-garden-healing-light-piano-for-meditation-zen-landscapes-112199.mp3", startNode: tStartNode)

let horrorStory = Story(title: "Inside", image: "sculpture-g7160325af_1920.jpeg", musicFileName: "near-danger-10375.mp3", startNode: horrorStartNode)
