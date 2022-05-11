//
//  FantasyStory.swift
//  Text Adventure
//
//  Created by Jeremy Jackman on 5/6/22.
//

import Foundation

let introText1: String = "You wake up in a prison cell, unable to recall what happened to bring you here; you can only hope it wasn't for something serious."

let introText2: String = "You hear heavy footsteps approaching your cell and notice a paladin in armor approaching you. It's your lucky day, prisoner."

let introText3: String = "The Lord of these territories had released every prisoner in the hopes of regaining control of the castle in Enchanted Mountain. It has been lost since the dragon attack, yet the Lord of the Land appears desperate. He Offers each Prisoner an item to help them combat the monster"

// Choice Dialouge

let choiceDialogue1 = "For the Sword press the Left Button, For the Shield press the Right Button. Choose Wisely..."

// FIRST SET OF CHOICES

// leftButton = [Sword]
// rightButton = [Shield]


// If the User chooses [Sword]
let lineA_1: String = "This sword is a great pick for a weapon that will do some damage and will get you where you need to go."

let lineA_2: String = "As you approach the Enchanted Mountain, you will notice a dense forest ahead of you."

let lineA_3: String = "The sun is about to set. Should I wait till sunset or go into the woods?"

// If the User chooses [Shield]
let lineB_1: String = "This fine shield should protect me against the dragon, and you are on your way with it."

let lineB_2: String = "As you approach the Enchanted Mountain, you will notice a dense forest ahead of you."

let lineB_3: String = "The sun is about to set.  Should I wait till sunset or go into the woods?"

// Choice Dialougue

let choiceDialogue2 = "To Wait til Morning press the Left Button, To Continue thru the night press the Right Button. Choose Wisely..."

// SECOND SET OF CHOICES

// leftButton = [Wait til Morning]
// rightButton = [Continue thru the Night]


// If user selects [Sword] -> [Wait til Morning]
let lineC_1: String = "Vampires attacked you at night. You were slain because you did not have adequate protection. You have choose poorly"

// GAMEOVER

// If User selects [Sword] -> [Continue into the Night]
let lineD_1: String = "You proceed into the forest, and luckily for you, you were able to attack a number of vampires with your sword."

let lineD_2: String = "I may stroll securely towards the castle now that the Vampires have been defeated. You finally make it to the castle and enter"

// If User selects[Shields] -> [Wait til Morning]
let lineE_1: String = "During the night you were attacked by vampires. Luckily for you had some good protection to defend you."

let lineE_2: String = "That morning, I was able to go securely into the castle."

// If User selects [Shield] -> [Continue into the Night]
let lineF_1: String = "You move further into your forest. You can't protect yourself against a horde of vampires without a strong weapon. You have choose poorly"

// GAMEOVER

// THIRD SET OF CHOICES
let mainStoryChapter3: String = "You arrived at the castle's trophy chamber, where you discovered several valuables. But only two appear to be enticing, but you only have room for one."

let choiceDialogue3 = "For the Enchanted Helmet pressed the Left Button, For the Enchanted Bow press the Right Button. But Choose Wisely..."

//leftButton = Enchanted Helmet
//rightButton = Enchanted Bow

// If User selected [Sword] -> [Continue into the Night] -> [Helmet]
let lineG_1: String = "You choose to pick up the Enchanted Helmet. With this you should be able to defeat the dragon with this!"

let lineG_2: String = "It was a grueling struggle, but you were able to vanquish the dragon with my sword and an enchanted helmet. You return back to the village as a hero!"

// HAPPY EVER AFTER!

// If User Selected [Sword] -> [Continue into the Night] -> [Enchanted Bow]

let lineH_1: String = "You choose to pick up the Enchanted Bow, and with it, you should be able to combat the dragon!"

let lineH_2: String = "Unfortunately, You did not have adequate protection gear when fighting the Dragon. You have choose poorly"

// GAMEOVER

// If User selects [Shield] -> [Wait til Morning] ->[Enchanted Helmet]

let lineI_1: String = "You decided to Pick up the Enchanted Helmet with this. You should be able to protect yourself from the dragon with this!"

let lineI_2: String = "Unfortunately while fighting the Dragon You did not have enough weapons to defeat the dragon. You have choose poorly"

// GAMEOVER

// If User selects [Shield] -> [Wait til Morning] -> [Enchanted Bow]

let lineJ_1: String = "You decided to Pick up the Enchanted Bow with this. You should be able to fight the dragon with this!"

let lineJ_2: String = "It was a difficult battle, but you were able to vanquish the Dragon with the Shield and Enchanted Bow!"

// HAPPY EVER AFTER!