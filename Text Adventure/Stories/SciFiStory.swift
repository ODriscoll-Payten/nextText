//
//  SciFiStory.swift
//  Text Adventure
//
//  Created by Ro Dunn on 5/6/22.
//

var sciFiStart: String = """
You woke up upon a spaceship, 15 million light years away from your home planet on earth- and not even close to your destination. The crew have spent the last few hours running around and trying to pacify you and the rest of the travelers that were on the way to Delta B.

The captain released a statement saying that everything was under control. Apparently there was a malfunction with the cryo sleep functionality within the ship. They told everybody to return to their pods so they could begin to do a ‘Slow Sleep’ protocol and have us under again.
"""


var sC1Ld: String = """
You return to your pod, you have complete faith and trust in your captain and crew. I mean they got you this far. As you lay down in your pod and a pod maintenance employee locks it down you do begin to fall into a slow sleep.


Except… falling into cryo sleep feels different then last time. After a while your chest begins to have a hard time grabbing oxygen. You begin to panic and go to knock on your pod roof to grab someone's attention, but you can’t- you feel too weak to even make a fist. Panic grips your mind as black fills your vision. You will sleep, but you will never wake up on Delta B.

"""




let sC1Rd = """
You decide to walk around some before returning to your pod, you’ve been laying on your back for a good couple of years now and you're starting to feel it. As you walk around you find that the majority of the passengers have calmed down, grabbing a drink or a bite to  eat from the only half functioning cafeteria.

You do see one gentleman sitting at the coffee bar, despite the fact that you’ve all been in pods he somehow seems… dirty. Maybe he just missed decontamination.
"""




var sC2Ld = """
You decide to sit and grab a coffee as well, when you sit down the man doesn’t spare you a glance, simply keeps staring dead eyed into his coffee.

You Strike up a conversation, you’ve been lonely for the past couple of… however long you were actually asleep. When you first begin talking to him, you're mostly met with grunts and shakes of his head, discouraged you mention returning back to your pod and he grabs your arm to keep you from getting up. He puts on a sly smile, his teeth look yellowed and rotten. His breath is horrendous.

“I wouldn’t if I were you.”

He seems to be very serious but he’s freaking you out.
"""




var sC3Ld = """
That guy freaked you out, You return to your pod, you have complete faith and trust in your captain and crew. I mean they got you this far. As you lay down in your pod and a pod maintenance employee locks it down you do begin to fall into a slow sleep.

Except… falling into cryo sleep feels different then last time. After a while your chest begins to have a hard time grabbing oxygen. You begin to panic and go to knock on your pod roof to grab someone's attention, but you can’t- you feel too weak to even make a fist. Panic grips your mind as black fills your vision. You will sleep, but you will never wake up on Delta B.
"""



var sC3Rd = """
You Decide to listen to the man. And you are horrified at the story he tells you.
 
He recounts how only months into this journey his pod malfunctioned. He’s been alone for… a very long time. His hold on you titans how he recounts that at first he was lonely, but as time passed he just started being angry. Angry that he’s the only one awake, that he might even die before he got to see Delta B. That he’s aged, while we all slept safely- untouched by time in our pods.
 
His eyes get cold, as he tells you he decided he wouldn't be the only one to never see Delta B. He sabotaged the oxygen recycler, and the slow sleep the crew where instating would be instead a slow fall to death. Before you can do anything about what this man has told you- he gives his slimy smile once more and brings his mug of coffee down on your head and your vision fades out.
 
You hear one last thing. I’ll save you the trouble of making a hard decision, since you were kind enough to spare me some conversation. You awaken to silence and cold, you run around the ship trying to find anyone but it seems the man was right- the other passengers look blue and still in their pods. You hear some noise from a locked door down the crew's corridor. When you knock no one answers. You fall to your knees ready to give up, before you fall you feel the strong grip of a hand on your shoulder.
 
"It's so nice to not be alone anymore."
 
Two Months Later
 
It has been a non-stop talk show for this guy. You managed to communicate with the crew- begging them to let you inside with them, if not because you where stuck with some crazy, murderous fiend- but because he NEVER STOPS TALKING. It's gotten to the point where you're not even afraid of him. Just annoyed. The crew refuses to allow you entry to their quarters so you spend the next couple of weeks just hiding from the insistent onslaught of this dude's life story.
 
Finally, you break. You can't take it anymore. He finds your last hiding spot (the small cove under the helmet shelf in the loading bay), and you know you will never get a moment of quiet again. You can't do this forever. It could be years, decades until you reach Delta B.Currently he stands on the outside lock of the bay, making his way towards you. You take a deep breath, hit the red button by the doors and watch as he gets sucked out to space. You get a euphoric feeling at the revelation you will finally be free of the man, you had to do it- you couldn't stand him forever.
 
That feeling is immediately clouded over by guilt when you see the shadow of a familiar planet appear behind his dissolving remains. You've reached Delta B- and just in time to begin your life as a fugitive.
"""



var sC2Rd = """
A dirty man is none of your concern, you keep walking. Eventually you end up in the crew's quarters. They’re rooms seem to be empty- you presume most of them are putting people back in pods. At least that’s what you think… until you reach what must be a large conference room. It seems like everybody but the pod technicians are gathered there, some are crying, some look angry while most have a passive peace about them. You arrive just in time to hear them discussing.



“Do we have to kill them all though? And to lie to them…”


“Listen, there isn’t enough oxygen to keep them all alive. Even if we did try to explain- give them the truth, what would stop them from rioting? Killing each other? We’ll tell them it’s a slow sleep. They’ll never know.

Just then you’re spotted by the crew, they grab you and slam the doors shut behind you. They don’t have it in them to kill you to keep their secret (at least not face to face), so instead you are locked in the conference room with them. In a year or two when you reach your destination you may be grateful for the mercy- or you may try to report them. Sadly nothing will come about it, whether you like it or not you survived when the rest of the passengers did not. And there are no laws in space so no one can hold the crew accountable for what they did.”

"""



let youDecideToListenToHimNode = ChoiceNode (text: sC3Rd, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle:  nil, isGoodEnd: true, isBadEnd: nil)


let youGetAwayFromThatDirtyWeirdo = ChoiceNode (text: sC3Ld, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle:  nil, isGoodEnd: nil, isBadEnd: true)


///the lets grab a coffee choice
let sciFiNodeGrabACoffee = ChoiceNode (text: sC2Ld, leftChoice: youGetAwayFromThatDirtyWeirdo, rightChoice: youDecideToListenToHimNode, leftButtonTitle: "BREAK AWAY", rightButtonTitle:  "LISTEN TO HIM", isGoodEnd: nil, isBadEnd: nil)

//you end up survivng with the crew
let iWannaSeeEvenMoreNode = ChoiceNode (text: sC2Rd, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle:  nil, isGoodEnd: true, isBadEnd: nil)

///walk around option choice one
let sciFiNodeWalkAround = ChoiceNode (text: sC1Rd, leftChoice: sciFiNodeGrabACoffee, rightChoice: iWannaSeeEvenMoreNode, leftButtonTitle: "LET'S GRAB A COFFEE", rightButtonTitle:  "I WANNA SEE MORE OF THE SHIP", isGoodEnd: nil, isBadEnd: nil)

///intro death choice return to pod
let sciFiIntroDeathNode = ChoiceNode(text: sC1Ld, leftChoice: nil, rightChoice: nil, leftButtonTitle: nil, rightButtonTitle: nil, isGoodEnd: nil, isBadEnd: true)

let sciFiStartNode = ChoiceNode(text: sciFiStart, leftChoice: sciFiIntroDeathNode , rightChoice: sciFiNodeWalkAround, leftButtonTitle: "RETURN TO POD", rightButtonTitle: "WALK AROUND", isGoodEnd: nil, isBadEnd: nil)


