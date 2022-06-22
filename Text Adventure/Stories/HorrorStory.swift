//
//  HorrorStory.swift
//  Text Adventure
//
//  Created by Katy Dunn on 6/22/22.
//

import Foundation

var horrorStart: String = """
You awake with this unshakable feeling that your family is not in their rooms, that there is no familiar faces to be seen in the hallways or in the living room.

And yet you do not feel alone.

You hear something shift in the dark corner of your room, feel a slight breeze come across your cheek as the window lets in the night breeze. The sky is a deep raven and the stars let in no light. The moon is barely there. Only showing itself for a couple seconds at a time before hiding once again behind the clouds.

And as the breeze crosses your face, you remember that you had closed the window before you went to bed. In fact, you locked it as well.

"""
///go back to bed
var hC1Ld: String = """
You Decide to ignore the breeze, and the shifting, and the lack of presence in your house. You pul your covers up around your face, covering yourself- and creating a false sense of security. Sleep will not protect you, and a blanket is just a blanket. Evil is not known for following childish rules.

You can’t seem to sleep, and you lay awake filled with dread- stationary in the bed you refused to leave. The breeze still flows into the room filling it with cold air and the sound of rustling outside. You don’t know what's rustling, it could be bushes, or trees, or animals. It could also be an Axe killer standing outside waiting for their moment to climb through and lop your head off your shoulders.

You stay like that the whole night, shaking beneath the covers, frozen by terror- thinking that any moment may be the last.

When eventually you feel the sun shine on your blanket, signaling the break of dawn you relax. You feel yourself slump, your muscles that had tensed for hours on end suddenly filled with fatigue. What had seemed so scary in the night feels harmless in the day. How could you have stayed up all night simply because something felt wrong, you shake your head and remove the blanket, ready to get some actual sleep.

But as soon as your eyes become free of the barrier, you wish- you think- you scream- you see- nothing. You have time for none of it you see nothing, you react to nothing. You simply see the sharp edge of a blade and then you are dead. Fool, daylight is as much a deterrent to evil as a blanket.

"""
///close the window
var hC1Rd: String = """
You Go to close the window. You're on the ground floor- anything could get in if you left it open. You slam the window close with a deep thunk and then make a quick return to your bed. Just as you're about to climb into your bed you hear a scraping sound coming from the hallway- just outside your bedroom. At the same time you get a notification on your computer. Who could be messaging you so late at night?
"""

///go to hallway
var hC2Ld: String = """
You go to the hallway, your breath catches in your throat, chills climb up your neck, filling you with a horrible sense of fear. But the chances are there is nothing there- you try to take a few deep breaths and relax. This is your house you're supposed to feel safe. Nevertheless, you do keep a bat next to your door. Do you take it?
"""

///go to computer
var hC2Rd: String = """
You go to check your computer, more interested in whatever distraction you’ll find there then whatever was making that sound in the hallway. You try to shake the sleep from your eyes further. It seems that tonight you just won’t be getting much shut eye- and push comes to shove some late night gaming might be nice.

You could boot up something cozy to get the strange feelings to leave you alone, but first the message.

It could be one of your friends in trouble, or a late night text from your sister needing a ride home from a party she shouldn’t be at… your sister is always pulling stuff like that. It doesn’t help that you always bail her out. She could be anywhere right now and you’d have no idea, and neither would your parents.

Pulling up the message you take a look. It says it’s from an unknown user on one of the forums you use. Do you check it?

"""

///Take Bat
var hC3Ld: String = """
You take the bat with you while you traverse the hallway, holding it up high, ready to swing at  a moment's notice. You walk all the way down to the end of the hallway- listening for the scratching. That was the worst part about moving out of your parents house recently- when something went bump in the night you had to be the responsible one and go searching for it. No crying for your parents to come rescue you.

Though with how often your younger sister called for you to come rescue her, you where getting used to the responsibilities of living alone quickly. You worried for her often- she was always going out, partying too hard… and you had a sneaking suspicion that her grades weren’t as stellar as she claimed.

As you walked the hallway and thought of your sister you let your guard down, the bat still resting in your hand but no longer in the ready position. You reach the end and let out a sigh of relief. There’s no one here. You turn around, about to go back to bed when your met face to face with a figure in a ghastly, demonic, face mask.

You don’t think, you just swing- taking them out at the knee hearing a sickening crunch before you attempt to make a run for it. Before you can the figure screams out. They scream out YOUR NAME. You think to turn around and hit them again, make sure they can’t follow you- before the figure rips off their mask to reveal your sister.

You now scream as well, out of frustration more than anything else, dropping to the ground to get a look at the damage. It’s definitely broken. Your sisters are crying too hard for you to berate her now, or ask too many questions.

You can guess that she decided to go partying tonight, and instead of taking the risk of sneaking back into your parents house decided to crash at yours, it’s happened before and she has a spare key for pretty much that exact reason. And while she was at it she wanted to scare you- not the brightest decision in the world to go about sneaking about a paranoid, keeps-a-bat-next-to-the-bed type’s house.

You try to calm her down with some words of comfort before letting her know you were running to your bedroom to grab your phone- you would need to get her to the hospital and calling an ambulance seemed more reasonable than trying to move her in her current state.

Just as you make a move, your eye catches across the hall, about 25 feet away from you stands a man with an axe. No mask, no scary scratching to draw you out. He’s staring dead at you. There is no emotion in his eyes.

You pick up your sister and get ready to make a move to the front door, your closer than he is- but your sister won’t be able to make it as fast as you. If you try to sprint with her you’ll both be caught.

"""
///Leave Bat
var hC3Rd: String = """
You leave the bat, it’s your house- you know you’ve locked all the doors, not to mention the grief your sister would give you if she heard you were galavanting around your own house with a bat at your side. It might actually be better to get snatched by some freak then deal with your sisters teasing.

Thoughts of your sister linger in your mind. You worried for her often- she was always going out, partying too hard… and you had a sneaking suspicion that her grades weren’t as stellar as she claimed. You’d resorted recently to giving her your spare key- because if she wasn’t going home to your parents you’d rather she crash at your place then some frat house.

You walk all the way down to the end of the hallway- listening for the scratching. That was the worst part about moving out of your parents house recently- when something went bump in the night you had to be the responsible one and go searching for it. No crying for your parents to come rescue you.

As you walked the hallway and thought of your sister you let your guard down. You reach the end and let out a sigh of relief. There’s no one here. You turn around, about to go back to bed when you're met face to face with a figure in a ghastly, demonic, face mask.

In a panic you scream, running backwards until your back hits the wall, giving you now a view of your living room and front door. You're about to make a break for it when the masked figure gives out an incredibly girly giggle. You stop in your tracks, taking a couple steps forward you rip the mask off your sister. She’s losing her mind having a laughing fit over scaring you so good.

You are about to rip her a new one over being so careless, you can guess that she decided to go partying tonight, and instead of taking the risk of sneaking back into your parents house decided to crash at yours, it’s happened before and she has a spare key for pretty much that exact reason. And while she was at it she wanted to scare you- not the brightest decision in the world to go about sneaking about a paranoid, keeps-a-bat-next-to-the-bed type’s house. It’s a good thing you decided to leave it where it was- you could have really hurt her.

Just as you make a move to go back to your room, let her take your couch for the night, your eye catches across the hall, about 25 feet away from you stands a man with an axe. No mask, no scary scratching to draw you out. He’s staring dead at you. There is no emotion in his eyes.

You grab your sister by the arm, you can see the door, and if you both move fast enough you know you can make it.

You lean in close telling her “Don’t look around, don’t ask any questions. Just run toward the door, do you understand me?”

The laughter and fun disappear from her eyes, but she seems to have enough wits about her to not argue. She nods and you both take off.

The man gives chase but you're closer to the door, you’re smaller and faster. You make it to your neighbors house and they let you in to phone the police.

You won’t sleep well for a couple of months, you even move back in with your parents, but you and your sister are safe and whole.

"""

///check message
var hC4Ld: String = """
You check your messages seeing that a neighbor of yours had messaged you- it was your buddy across the street, asking you to come over. But weirdly enough it seemed like he thought you were outside.

“Dude, why are you just standing in front of your door?”

“Did you lock yourself out ajsdfjsdkfja that is so you”

“You can come over, I’ll help you get in in the morning”

Confusion falls over you- you check the timestamp, these were sent about 15 minutes ago- when you were still asleep.

You get a little confused, and are about to respond when you get another message.

“NVM I saw you went through the window- smart move. See you tomorrow.”

In a panic you whip jump out of your seat, making way to grab the bat beside your bed, but you don’t have enough time. Once you turn around you are immediately met with the horrifying ordeal of having an axe brought down on your head. The bright side is you don’t have to deal with it for long. You are found dead the next morning by your neighbor, who had stopped by to see if you would need any help repairing the window that ‘you’ broke.

"""


///ignore message
var hC4Rd: String = """
You ignore strangers' messages, you're sure whatever spam you’ve received will be fine until the morning.

You know that trying to return to sleep would be pointless now so you end up slipping on your headphones and booting up ‘Wizard 202’. You let yourself relax to the familiar feel of the game and when the sun finally decides to peek its head over the hills outside your room- you’ve played for a couple hours straight.

You hear a knock on the door. Not your front door… but your bedroom door. Your breath comes in hard puffs and your heart accelerates in your chest.

You don’t even have time to turn around before your sister yells “BOO” right in your ear. Scaring you- she dissolves into a puddle of giggles on your floor and you can skip your cup of coffee this morning.

"""


///leave your sister
var hC5Ld: String = """
You aren't ready to die and as much as you love your sister- you know you won’t sacrifice your life for hers. I mean, you're a straight A student, an upstanding citizen… you make your parents proud. She’s a disobedient party girl who thinks that just because she hasn’t graduated highschool it doesn’t count as alcoholism.

You push her to the ground and take off in a dead sprint toward the door. You hear some screaming and a sickening crunch behind you but you make it out the door and to your neighbors. By the time the cops arrive at your house the killer is gone, and your sister is dead. Mangled beyond comprehension.

But hey, I’m sure guilt won’t eat you up inside. I’m sure your parents won’t gaze at you with contempt for not protecting their youngest.

I’m sure that when you drive by the memorial, look at her spot at the dinner table, or try to sleep at night you won’t be plagued with visions of your sister's crying- fearful face. I’m sure that life will still be worth living.

And when you fall into the bottle and drop out of college- you are not the disappointment you accused your sister of being. You're worse.

"""


///buy your sister time
var hC5Rd: String = """
You decide to buy your sister some time. You grip your bat hard and push your sister toward the door. She's your little sister, and no matter how much a pain in the ass she can be- you know you would die to protect her. You're about to die to protect her.

Your sister makes a sprint toward the door and you sprint towards the killer. He comes down with his axe missing you by inches. You swing with your bat and crack him across the same place you got your sister. As he goes down he lands a blow to your side- ripping you open. You get one last hit into his head before everything goes black.

When you awaken it’s to bright artificial lights and the sounds of machines beeping around you. Your sister had made a run to your neighbors and the police came to apprehend the man who broke into your house.

The paramedics were able to stabilize you on the way to the hospital- and the doctors are sure you have quite the life ahead of you, though with the use of a mobility aid. Your sister forgave you for the broken leg. She’s going to make a full recovery.

It was probably the scariest thing that will ever happen to you- but you made it out with your life and your sisters.

"""
///Buy her time
let horrorNodeBuyYourSisterTime = ChoiceNode (text:hC5Ld , leftChoice:nil , rightChoice:nil , leftButtonTitle: "", rightButtonTitle:  "", isGoodEnd: true, isBadEnd: nil)


///leave your sister
let horrorNodeLeaveYourSister = ChoiceNode (text:hC5Ld , leftChoice: nil, rightChoice:nil , leftButtonTitle: "", rightButtonTitle:  "", isGoodEnd: nil, isBadEnd: true)

///ignore your message
let horrorNodeIgnoreAnonMessage = ChoiceNode (text:hC4Rd , leftChoice: nil , rightChoice:nil , leftButtonTitle: "", rightButtonTitle:  "", isGoodEnd: true, isBadEnd: nil)

///check the message
let horrorNodeCheckAnonMessage = ChoiceNode (text:hC4Ld , leftChoice:nil , rightChoice:nil , leftButtonTitle: "", rightButtonTitle:  "", isGoodEnd: nil, isBadEnd: true)


///leave your bat
let horrorNodeLeaveBat = ChoiceNode (text: hC3Rd , leftChoice:nil , rightChoice:nil , leftButtonTitle: "", rightButtonTitle:  "", isGoodEnd: true, isBadEnd: nil)

///bring your bat with you
let horrorNodeTakeBAt = ChoiceNode (text: hC3Ld , leftChoice: horrorNodeLeaveYourSister , rightChoice:horrorNodeBuyYourSisterTime , leftButtonTitle: "SAve YOURSELF", rightButtonTitle:  "SAVE YOUR SISTER", isGoodEnd: nil, isBadEnd: nil)

///check your computer
let horrorNodeCheckComputer = ChoiceNode (text: hC2Rd , leftChoice:horrorNodeCheckAnonMessage , rightChoice: horrorNodeIgnoreAnonMessage , leftButtonTitle: "CHECK MESSAGE", rightButtonTitle:  "LEAVE MESSAGE", isGoodEnd: nil, isBadEnd: nil)


///go to check the hallway
let horrorNodeCheckHallway = ChoiceNode (text: hC2Ld , leftChoice:horrorNodeTakeBAt , rightChoice: horrorNodeLeaveBat , leftButtonTitle: "TAKE BAT", rightButtonTitle:  "LEAVE BAT", isGoodEnd: nil, isBadEnd: nil)

///go to close the window
let horrorNodeCloseWindow = ChoiceNode (text: hC1Rd, leftChoice: horrorNodeCheckHallway , rightChoice: horrorNodeCheckComputer, leftButtonTitle: "CHECK HAll", rightButtonTitle:  "CHECK COMPUTER", isGoodEnd: nil, isBadEnd: nil)

///intro death choice return to bed
let horrorIntroDeathNode = ChoiceNode(text: hC1Ld, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle: nil, isGoodEnd: nil, isBadEnd: true)

let horrorStartNode = ChoiceNode(text: horrorStart, leftChoice: horrorIntroDeathNode , rightChoice: horrorNodeCloseWindow, leftButtonTitle: "BACK TO BED", rightButtonTitle: "CLOSE WINDOW", isGoodEnd: nil, isBadEnd: nil)
