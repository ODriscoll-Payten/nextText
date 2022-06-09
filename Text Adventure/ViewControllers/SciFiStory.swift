//
//  SciFiStory.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/6/22.
//

//import Foundation
//import UIKit
//var sciFiStory = Story(title: "Out Of Oxygen", text: sciFiStart, choices: [sciFiChoice1, sciFiChoice2, sciFiChoice3])
//
var sciFiStart: String = "You woke up upon a spaceship, 15 million light years away from your home planet on earth- and not even close to your destination. The crew have spent the last few hours running around and trying to pacify you and the rest of the travelers that were on the way to Delta B. The captain released a statement saying that everything was under control. Apparently there was a malfunction with the cryo sleep functionality within the ship. They told everybody to return to their pods so they could begin to do a ‘Slow Sleep’ protocol and have us under again.You feel a little restless and you know it'll be a while before they actually get to putting everyone to sleep, so you could take a walk if you wanted but you also know that the crew is going to want to put everyone to sleep as soon as possible- and the idea of being forgotten and left awake is horrible!"
//
//fileprivate let sciFiNode1 = ChoiceNode(deathText: nil, endingText: nil, text: sciFiStart, leftChoice: <#T##ChoiceNode?#>, rightChoice: <#T##ChoiceNode?#>, parent: <#T##ChoiceNode?#>, leftButtonTitle: "RETURN TO POD", rightButtonTitle: "WALK AROUND")
//
//let sciFiChoice1 = Choice (id: "sfc1",
//                           leftButtonText: "RETURN TO POD",
//                           rightButtonText: "WALK AROUND",
//                           leftStoryText: sC1Ld,
//                           rightStoryText: sC1Rd,
//                           leftNextChoiceId: nil,
//                           rightNextChoiceId: "sfc2")
//
//
////choice 1 lft
var sC1Ld: String = "You return to your pod, you have complete faith and trust in your captain and crew. I mean they got you this far. As you lay down in your pod and a pod maintenance employee locks it down you do begin to fall into a slow sleep. Except… falling into cryo sleep feels different then last time. After a while your chest begins to have a hard time grabbing oxygen. You begin to panic and go to knock on your pod roof to grab someone's attention, but you can’t- you feel too weak to even make a fist. Panic grips your mind as black fills your vision. You will sleep, but you will never wake up on Delta B."
//
//
////you died
//
////choice 1 rgt
let sC1Rd = "You decide to walk around some before returning to your pod, you’ve been laying on your back for a good couple of years now and you're starting to feel it. As you walk around you find that the majority of the passengers have calmed down, grabbing a drink or a bite to  eat from the only half functioning cafeteria. You do see one gentleman sitting at the coffee bar, despite the fact that you’ve all been in pods he somehow seems… dirty. Maybe he just missed decontamination."
//
//
//let sciFiChoice2 = Choice (id: "sfc2",
//                           leftButtonText: "LET'S GRAB A COFFEE",
//                           rightButtonText: "I WANNA SEE MORE OF THE SHIP",
//                           leftStoryText: sC1Ld,
//                           rightStoryText: sC1Rd,
//                           leftNextChoiceId: "sfc3",
//                           rightNextChoiceId: nil)
//
//
////choice 2 lft
//var sC2Ld = "You decide to sit and grab a coffee as well, when you sit down the man doesn’t spare you a glance, simply keeps staring dead eyed into his coffee. You Strike up a conversation, you’ve been lonely for the past couple of… however long you were actually asleep. When you first begin talking to him, you're mostly met with grunts and shakes of his head, discouraged you mention returning back to your pod and he grabs your arm to keep you from getting up. He puts on a sly smile, his teeth look yellowed and rotten. His breath is horrendous. 'I wouldn’t if I were you' he says. He seems to be very serious but he’s freaking you out"
//
//
//let sciFiChoice3 = Choice (id: "sfc3",
//                           leftButtonText: "BREAK AWAY",
//                           rightButtonText: "LISTEN TO HIM",
//                           leftStoryText: sC1Ld,
//                           rightStoryText: sC1Rd,
//                           leftNextChoiceId: nil,
//                           rightNextChoiceId: nil)
////choice 2 rgt
////you died
//var sC3Ld = "That guy freaked you out, so you return to your pod, you have complete faith and trust in your captain and crew. I mean they got you this far. As you lay down in your pod and a pod maintenance employee locks it down you do begin to fall into a slow sleep. Except… falling into cryo sleep feels different then last time. After a while your chest begins to have a hard time grabbing oxygen. You begin to panic and go to knock on your pod roof to grab someone's attention, but you can’t- you feel too weak to even make a fist. Panic grips your mind as black fills your vision. You will sleep, but you will never wake up on Delta B."
//
//
////listen
//var sC3Rd = "You Decide to listen to the man. And you are horrified at the story he tells you. He recounts how only months into this journey his pod malfunctioned. He’s been alone for… a very long time. His hold on you titans how he recounts that at first he was lonely, but as time passed he just started being angry. Angry that he’s the only one awake, that he might even die before he got to see Delta B. That he’s aged. His eyes get cold, as he tells you he decided he wouldn't be the only one to never see Delta B. He sabotaged the oxygen recycler, and the slow sleep the crew where instating would be instead a slow fall to death. Before you can do anything about what this man has told you- he gives his slimy smile once more and brings his mug of coffee down on your head and you vision fades out. You hear one last thing. I’ll save you the trouble of making a hard desicion, since you were kind enough to spare me some conversation. You awaken to silence and cold, you run around the ship trying to find anyone but it seems the man was right- the other passenger look blue and still in their pods. You hear some noise from a locked door down the crews corridor. When you knock no one answers. You fall to your knees ready to give up, before you fell the strong grip of a hand on your shoulder. You will make it to Delta B. And he won't have to worry about being alone again"
//
//
////you survived
//
////2 see more of the ship
////you survive ending
//var sC2Rd = "You decide to keep walking, you’ll be going under soon and you didn’t get to see much of the ship on orientation day. A dirty man is none of your concern, you keep walking. Eventually you end up in the crew's quarters. They’re rooms seem to be empty- you presume most of them are putting people back in pods. At least that’s what you think… until you reach what must be a large conference room. It seems like everybody but the pod technicians are gathered there, some are crying, some look angry while most have a passive peace about them. You arrive just in time to hear them discussing. Do we have to kill them all though? And to lie to them… Listen, there isn’t enough oxygen to keep them all alive. Even if we did try to explain- give them the truth, what would stop them from rioting? Killing each other? We’ll tell them it’s a slow sleep. They’ll never know. Just then you’re spotted by the crew, they grab you and slam the doors shut behind you. They don’t have it in them to kill you to keep their secret (at least not face to face), so instead you are locked in the conference room with them. In a year or two when you reach your destination you may be grateful for the mercy- or you may try to report them. Sadly nothing will come about it, whether you like it or not you survived when the rest of the passengers did not. And there are no laws in space so no one can hold the crew accountable for what they did."
//    
//
//
//



///walk around option choice one
let sciFiNode1 = ChoiceNode (text: sC1Rd, leftChoice: westernNode2, rightChoice: westernStayOnTrainNode, leftButtonTitle: "LET'S GRAB A COFFEE", rightButtonTitle: "Stay on the train")

///intro death choice return to pod
let sciFiIntroDeathNode = ChoiceNode(text: sC1Ld, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle: nil)

let sciFiStartNode = ChoiceNode(text: sciFiStart, leftChoice: sciFiIntroDeathNode , rightChoice: westernNode1 , leftButtonTitle: "RETURN TO POD", rightButtonTitle: "WALK AROUND")
