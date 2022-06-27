////
////  FantasyStory.swift
////  Text Adventure
////
////  Created by Jeremy Jackman on 5/6/22.
////
//

import Foundation
import UIKit

var fantIntroText1: String = "You wake up in a prison cell you are not sure how you got here. You can only hope that it wasn't for anything serious. You shutter at the thought of what you might have done. Suddenly I hear heavy footsteps approaching your cell. The Prison guard looks at me and said \"Today is your lucky day prisoner.\" As you walk out into the field you see a man in a fancy robe I believe it is the lord of this castle. He annouced that he is willing to give me my freedom if I am willing to go on an adventure to reclaim the castle in the Enchanted Mountain. I believe it was about five years ago the kingdom there has fallen into the hands of a Mighty Dragon! The Lord walks towards me with one hand having a Sword and the other with a Shield. Which one should I choose?"



// Reverse order

    // If User Selects [Sword]
var fan_LD: String = "I have Choosen the Sword! I should be able to begin my journey now! The Enchanted Mountain isn't too far from here however there is a heavy forest and it is getting late now should I wait til morning or should I continue my journey thru the night?"



    // If User Selects [Shield]
var fan_RD: String = "I have Choosen the Shield! I should be able to begin my journey now! The Enchanted Mountain isn't too far from here however there is a heavy forest and it is getting late now should I wait til morning or should I continue my journey into the night?"

    // [Sword] -> [Wait til Morning]
var fan_LD_LD: String = "While you were resting you were ambused by vampires without good protective gear you did not survive this encounter"
    // GAMEOVER

    // [Sword] -> [Continue into the Night]
var fan_LD_RD: String = "You continue into the night and while you were walking you see a vampire clan nearby! Luckily for you they don't seem to have notice you so you had the element of surprise on your side! You finally make your way into the castle while you were walking towards the Throne room where the Dragon resides I stumble across two enchanted item. One is a Enchanted Helmet I'm not sure what it does but I'm sure it will give me good protection and thee other item is a Enchanted Bow I'm not sure what this Bow can do but it looks extremly powerful. Which one should I take?"

    // [Shield] -> [Wait til Morning]
var fan_RD_LD: String = "While you were resting you were ambused by vampires! But luckily for you your shield protected you from the vampire attack and with enough time the sun has risen killing all the vampires! You finally make your way into the castle while you were walking towards the Throne room where the Dragon resides I stumble across two enchanted item. One is a Enchanted Helmet I'm not sure what it does but I'm sure it will give me good protection and thee other item is a Enchanted Bow I'm not sure what this Bow can do but looks extremly powerful. Which one should I take?"

    // [Shield] -> [Continue into the Night]
var fan_RD_RD: String = "You continue into the night and while you were walking you ran across a vampire clan without a good weapon you perished"
    //GAMEOVER

    // [Sword] -> [Continue into the Night] -> [Enchanted Helmet]
var fan_LD_RD_LD: String = "You finally come face to face with the mighty Dragon! While you were fighting. The Dragon landed a hit! luckily for you the Enchanted Helmet protected me. After a few blows my enchanted helmet guided me to strike the Dragon and I was able to stab the Dragon right in the heart! Congratulation Dragonslayer you have slain the Dragon with your Sword and Helmet! You return back to the village a hero to be remembered forever!"

    // [Sword] -> [Continue into the Night] -> [Enchanted Bow]
var fan_LD_RD_RD: String = "You finally come face to face with the Dragon! You battled the Dragon with your Sword but when the Dragon struck you. you did not have enough protective gear on thus you did not survive"
    //GAMEOVER

    //[Shield] -> [Wait Til Morning] -> [Enchanted Helmet]
var fan_RD_LD_LD: String = "You finally come face to face with the Dragon! But you do not have any weapons! You perished!"
    //GAMEOVER

    // [Shield] -> [Wait Til Morning] -> [Enchanted Bow]
var fan_RD_LD_RD: String = "You finally come face to face with the mighty Dragon! While you were fighting. The Dragon landed a hit! luckily for you the Shield was able to protect you and while you were blocking you can sense that the Enchanted Bow was ready to fire! Without a moment to lose you shoot your shot! The arrow aimed directly towards the Dragons heart! Congratulation Dragonslayer you have slain the Dragon with your Shield and Bow! You return back to the village a hero to be remembered forever!"


// ENDING SCENARIO
var fantSwordEnding = ChoiceNode(text: fan_LD_RD_LD,
                                  leftChoice: nil,
                                  rightChoice: nil,
                                  leftButtonTitle: nil,
                                  rightButtonTitle: nil,
                                 isGoodEnd: true,
                                 isBadEnd: nil)

var fantShieldEnding = ChoiceNode(text: fan_RD_LD_RD,
                                 leftChoice: nil,
                                 rightChoice: nil,
                                 leftButtonTitle: nil,
                                 rightButtonTitle: nil,
                                isGoodEnd: true,
                                isBadEnd: nil)

// ALL DEATH SCENARIOS

// [Shield] -> [Wait Til Morning] -> [Enchanted Helmet]
var fantDeath3B = ChoiceNode(text: fan_RD_LD_LD,
                             leftChoice: nil,
                             rightChoice: nil,
                             leftButtonTitle: nil,
                             rightButtonTitle: nil,
                             isGoodEnd: nil,
                             isBadEnd: true)

// [Sword] -> [Continue into the Night] -> Enchanted Bow
var fantDeath3A = ChoiceNode(text: fan_LD_RD_RD,
                             leftChoice: nil,
                             rightChoice: nil,
                             leftButtonTitle: nil,
                             rightButtonTitle: nil,
                             isGoodEnd: nil,
                             isBadEnd: true)

// [Shield] -> [Continue into the Night]
var fantDeath2B = ChoiceNode(text: fan_RD_RD,
                             leftChoice: nil,
                             rightChoice: nil,
                             leftButtonTitle: nil,
                             rightButtonTitle: nil,
                             isGoodEnd: nil,
                             isBadEnd: true)


// [Sword] -> [Wait til Morning]
var fantDeath2A = ChoiceNode(text: fan_LD_LD,
                             leftChoice: nil,
                             rightChoice: nil,
                             leftButtonTitle: nil,
                             rightButtonTitle: nil,
                             isGoodEnd: nil,
                             isBadEnd: true)


// [Shield] -> [Wait Til Morning] -> [Enchanted Helmet] || [Enchanted Bow]
var fantDecision3B = ChoiceNode(text: fan_RD_LD,
                                leftChoice: fantDeath3B,
                                rightChoice: fantShieldEnding,
                                leftButtonTitle: "Enchanted Helmet",
                                rightButtonTitle: "Enchanted Bow",
                                isGoodEnd: nil,
                                isBadEnd: nil)

// [Shield] -> [Wait til Morning] || [Continue into the Night]
var fantDecisionShield = ChoiceNode(text: fan_RD,
                                leftChoice: fantDecision3B,
                                rightChoice: fantDeath2B,
                                leftButtonTitle: "Wait til Morning",
                                rightButtonTitle: "Continue into the Night",
                                isGoodEnd: nil,
                                isBadEnd: nil)

// [Sword] -> [Continue into the Night] -> [Enchanted Helmet] || [Enchanted Bow]
var fantDecision3A = ChoiceNode(text: fan_LD_RD,
                                leftChoice: fantSwordEnding,
                                rightChoice: fantDeath3A,
                                leftButtonTitle: "Enchanted Helmet",
                                rightButtonTitle: "Enchanted Bow",
                                isGoodEnd: nil,
                                isBadEnd: nil)

// [Sword] -> [Wait til Morning] || [Continue into the Night]
var fantDecisionSword = ChoiceNode(text: fan_LD,
                                leftChoice: fantDeath2A,
                                rightChoice: fantDecision3A,
                                leftButtonTitle: "Wait til Morning",
                                rightButtonTitle: "Continue into the Night",
                                isGoodEnd: nil,
                                isBadEnd: nil)

// [Intro]
var fantIntroNode = ChoiceNode(text: fantIntroText1,
                               leftChoice: fantDecisionSword,
                               rightChoice: fantDecisionShield,
                               leftButtonTitle: "Sword",
                               rightButtonTitle: "Shield",
                               isGoodEnd: nil,
                               isBadEnd: nil)

