//
//  TutorialStory.swift
//  Text Adventure
//
//  Created by Katy Dunn on 6/13/22.
//

import Foundation
var tutorialStart: String = """
You download a multiple choice, Choose Your Own Adventure style game from the app store. The developers have assumed that you require a tutorial on how to play the game. Do you?
"""

var tC1LD: String = """
You don’t need a tutorial? Fine then, the developers were wrong. They wasted all their time and should have known you’d be too smart for a tutorial. If you're so smart then feel free to back out by pressing the back button on the left, though if first you want to mute this ghastly music it’s the symbol on the right. If you have decided that you actually WOULD like to go through the tutorial, feel free to press the highlighted button at the bottom of the screen.
"""

var tC1RD: String = """
You want to go through the tutorial? Why? I’d think the concept would be simple enough. Did you download this app in your sleep? It seems that would be the only reason you would be confused as to how to go along. If you change your mind you can exit at any through the back button in the top left. I can’t believe the developers even put in a tutorial! I mean-
"""

var tC2LD: String = """
Defending the developers? Well… you haven’t even played the game yet- what if you hate it? What if you play through and then decide to leave a one star- foaming at the mouth angry review about how it was a waste of time? You could ruin the developers reputation! What are you going to write about? The music? You can turn that off! Just press the button in the top right! Did you accidentally press the wrong choice? You get the chance to replay the story every time you finish a route! I can’t believe you're going to do this to the developers. It’s cruel and unusual! Before you go ranting about it, at least play through the other stories.
"""
var tC2RD: String = """
You nod placatingly at your phone, letting the narrator rant and rave so long you’ve gotten quite bored with the whole thing. In fact, the narrator goes on for so long about how detestable the developers are they never tell you how to play the game. This defeats the whole purpose of a tutorial. You never learn how to mute the music by pressing the button in the top right corner, or that when playing through a story you will be given choices which are displayed on the left and right buttons below.The narrator never tells you that if you ever reach the end of a story you will get the chance to start over with the try again button. But due to the narrator being substandard at his job- you don’t know any of this, and perhaps never will.
"""
var tutorialLetTheNarratorBashFest = ChoiceNode(text: tC2RD, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle: nil, isGoodEnd: nil, isBadEnd: true)

var chooseToDefendTheDevelopersTutorialChoice = ChoiceNode(text: tC2LD, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil,  rightButtonTitle: nil, isGoodEnd: nil, isBadEnd: nil)

var tutorialForSomeReasonImGoingThroughTheTutorialChoice = ChoiceNode(text: tC1RD, leftChoice: chooseToDefendTheDevelopersTutorialChoice, rightChoice: tutorialLetTheNarratorBashFest, leftButtonTitle: "SAY SHUT UP", rightButtonTitle: "STAY SILENT", isGoodEnd: nil, isBadEnd: nil)

var tutorialDontNeedATutorialChoice = ChoiceNode(text: tC1LD, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle: nil, isGoodEnd: nil, isBadEnd: true)

var tStartNode = ChoiceNode(text: tutorialStart, leftChoice: tutorialDontNeedATutorialChoice, rightChoice: tutorialForSomeReasonImGoingThroughTheTutorialChoice, leftButtonTitle: "I DON’T NEED A TUTORIAL", rightButtonTitle: "I WANT THE TUTORIAL", isGoodEnd: nil, isBadEnd: nil)
