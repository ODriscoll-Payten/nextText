//
//  WesternStory.swift
//  Text Adventure
//
//  Created by Payten O'Driscoll on 5/12/22.
//

import Foundation
import UIKit


let westernStart =
    """
The smell of burning coal wafts subtly through the traincar as it rattles along the tracks.  Your gun chittering along in its holster. The bullets inside almost begging to be let loose. You're anxious, every hair on the back of your neck stands on end like the quills of a porcupine and you know in your gut that you would have been better off staying right where you were at. But train tickets ain't cheap, and alive and broke is a hell of a lot better than dead with a couple bucks. So you grit your teeth and slide a hand down the back of your neck. Your leather boots tapping the ground anxiously.

The voice of the ticket collector breaks through the silence of the traincar.


“Ok passengers, were about to come into station. If you're coming from boston,  new york, virginia, or other such eastern settlements you may be Unaccustomed to the subtleties of living here in StatesVille, so let me give you the rundown. Those of you who are just visiting will almost certainly be approached by our fine StatesVille public interest enforcers, they’re here to collect the Tourism tax from you! Among other things. The Tourism tax is a non negotiable fee for visiting our fine township. If you’re planning on staying longer You’ll soon learn about the wonderful and mandatory protection plan provided by our very own Statesville Department of public interest! With that being said, We’re about to arrive. i wish you a wonderful stay here in States-" *crack*

Your boots stomp flat against the ground as you look to the front of the traincar. The ticket collector lay dead on the floor, a smoking gun protruding from the hand of a man wearing a bandana over his mouth and nose. Two more men dressed similarly appear behind him. “Welcome to StatesVille passengers!” he shouts. “Although we are not the Public Interest Enforcers we will be collecting a tax from you!”. The two men behind him produce large sacks and begin walking down the aisles. “Wallets, Watches, Jewelry and valuables into the bags please and thank you” The man with the gun says with a cheery lilt to his voice. One of the thugs walks to your aisle and shoves a bag in your face.
"""

//let westernChoice1 = Choice (id: "wec1", leftButtonText: "Spit in the bag", rightButtonText: "Hand over your valuables", leftStoryText: wC1Ld, rightStoryText: wC1Rd, leftNextChoiceId: nil, rightNextChoiceId: "wec2")

//choice 1 lft
var wC1Ld: String = "As the bandit shoves the bag in your face you stare back at him defiantly and hock a loogie into the bag. The bandit pushes you into the wall and produces a knife from his belt. “Your valuables or your life” he says threateningly. “Your mom considers that a valuable” you reply gesturing at your spit. The knife is plunged into your kneck…"

// you died

// choice 1 rgt
var wC1Rd = """
You drop your wallet in the bag, preferring to give up the $1.50 inside rather than to make a scene. The bandit nods politely and continues down the aisle.


As the bandits rob the last of the passengers the leader begins speaking once again “Thank you for your cooperation passengers, have a wonderful stay here in StatesVille” he nods and tips his hat. His sleeve sliding down his right arm just enough to show a tattoo depicting a steer with horns.

The bandits exit the train car and disappear from sight.

"""

//let westernChoice2 = Choice (id: "wec2", leftButtonText: "Exit the train", rightButtonText: "Stay on the train", leftStoryText: wC2Ld, rightStoryText: wC2Rd, leftNextChoiceId: "wec3", rightNextChoiceId: nil)

//choice 2 left
var wC2Ld = """
Not even being robbed can deter you from your new life in StatesVille. Not that you have the money to leave anyhow.  You exit the train and begin to walk into town. Almost immediately being greeted by Public Interest Enforcers.

“Welcome to StatesVille traveler” the Enforcer says. “Please promptly pay the tourism tax or face deadly consequences” he smiles as he glances at his gun.
"""

//choice 2 right
var wC2Rd = """
Being robbed the first 3 seconds of your stay really turned you off to the idea of StatesVille. You’ll take your luck in the next town.
"""

// GAME OVER: leave before trouble ending


//let westernChoice3 = Choice (id: "wec3", leftButtonText: "Solve things with violence", rightButtonText: "Explain that you were robbed ", leftStoryText: wC3Ld, rightStoryText: wC3Rd , leftNextChoiceId: nil, rightNextChoiceId: "wec4")

//choice 3 lft
var wC3Ld =
"""
One Shakedown happened to be your daily limit so this is simply unacceptable. Youre the fastest gun in your town.. This guy wont know what hit him… you could probably get them both if you're quick enough. *Bang*
"""
// you died before you could unholster your gun

//choice 3 rgt
var wC3Rd = """
You explain to the man what happened on the train. He simply nods unsympathetically, “be that as it may” he grumbles. “Tourism tax isnt going to pay itself. And since you ain't  got your wallet i suppose your shoes would suffice”. He grinned broadly, showing off a set of teeth like a burnt picket fence.
"""


//let westernChoice4 = Choice(id: "wec4", leftButtonText: "Give him your shoes", rightButtonText: "Refuse", leftStoryText: wC4Ld, rightStoryText: wC4Rd, leftNextChoiceId: nil, rightNextChoiceId: "wec5")

// choice 4 lft
var wC4Ld = """
Grudgingly you slide the shoes off your feet and hand them to the Enforcer. “Thank you kindly” he replies, the smell of rot wisping from his mouth, churning your stomach. “Have a wonderful stay”. He pats you on the shoulder as he walks away with your shoes, chuckling to himself.

Your luck so far has been tough. But the only way to get through bad days is to put one foot in front of the other and just keep on walking so thats exactly what you do. The dry ground coating the underside of your feet as you walk into the town. Who knows what awaits you in this town, riches, glory, power, a rattlesnake. A RATTLESNAKE! Your head begins to swim as you look down at your feet, the toes on your right foot engulfed in the mouth of a snake. Nausea wells within your stomach as the ground rushes up to meet your oh so tired face.

DARKNESS


You wake up to the sweet sound of a woman humming a tune. You've never heard it before but it might be the most beautiful melody to grace your ears. You open your eyes to see a woman applying gauze to your foot. As you wake she looks into your face and smiles and immediately you know this is the woman you will marry. Who would've thought that a rattlesnake would be the perfect matchmaker.


"""
// game over love ending

//choice 4 rgt
var wC4Rd = """
“Id rather stand here and die of dehydration than risk walking into town without boots, no worse way to go than rattlesnake venom.“ you reply stiffly. The smile drops from his face and he places a hand on your shoulder. A wave of dread washes over you like a sickening blanket and the enforcer leans close and says “criminals like you shouldnt be walking the streets”  all of the air leaves your lungs as his fist plunges into your gut. You crumple and darkness starts to fill your vision

You awake in a jail cell, the steel bars in front of you planted into the cold hard ground, containing you within a small cell. Your abdomen still hurts from where you were punched but it doesn't seem like any ribs are broken. You notice a man sitting in a chair sleeping just outside your cell, His back turned to you and his loud snoring the only sound in the room apart from the soft opening of a door. As you observe the man you notice the ring of keys on his belt.

"""
//let westernChoice5 = Choice(id: "wec5", leftButtonText: "Do nothing", rightButtonText: "Reach for the keys ", leftStoryText: wC5Ld, rightStoryText: wC5Rd, leftNextChoiceId: "wec6", rightNextChoiceId: nil)

//choice 5 lft
var wC5Ld = """
You continue to observe your surroundings. The soft fall of leather boots growing louder as a tall man in freshly shined boots rounds the corner to your cell and stands in front of it. “Wake up!” he shouts coarsely, kicking the sleeping mans chair. “There’s a brawl at the saloon go break it up” the man in the boots orders gruffly. “Yes Sir.” said the sitting man as he quickly rose to his feet and scrambled off. “Sorry about the rough accommodations” says the tall man in front of you. “ Luckily you wont be in there for too long”, a smile spreads across his face as he says “were gonna make an example out of you”. “There is order in a town like this” he says as he begins to pace in front of your cell. “Order that must not be disrupted… now, when someone like you comes along and shakes things up.. Decides that he doesn't want to follow the rules, people start to take notice. And if you receive no punishment for breaking the rules… Well after that everything goes to chaos.” the man stopped pacing and the smile vanished from his face “I refuse to let that happen” he said, his voice cutting like a knife. The smile reappeared back on his face nearly as fast as it had left, “ And so tomorrow at noon, the trusty hero sheriff” he said gesturing to himself, “Will defeat a dangerous criminal” he said gesturing to you, “In a duel.”. “And order will be restored!” he said jubilantly. “Until then.. You just sit tight” his smile broadening in a cruel sneere. And with a tip of his hat he walked away, the tattoo of a steer staring back at you from his arm.

EVENING

You awake to a dark cell, loud snores occupying the sound in the room. As your eyes begin to adjust to the darkness you spot another guard sleeping in the same spot as the first. You notice that hes wearing the same ring of keys as the guard earlier.


"""

// choice 5 rgt
var wC5Rd = """
You crawl to the edge of your cell and carefully reach your hand through the bars, careful not to disturb the sleeping deputy. As you slip your fingers around his keyring a voice echos through the room “HEY!!!”. The deputy awakes with a start and your hands dart back in through the bars before he can see them, but it doesnt matter. The man who shouted storms angrily into your field of vision and towards your cell. The now awake deputy glances anxiously in your direction and then back at the officer storming towards the cell. “What's wrong jim?” he says. “This worm just tried to escape” replies the standing man. A scowl spreads across both of their faces as they look at you. One of the officers slips a key into your cell door and swings it open. They both step inside and begin to move closer to you. The malice in their eyes burning holes into your soul.

you died in a prison beating
"""
// you died, prison beating

//let westernChoice6 = Choice(id: "wec6", leftButtonText: "Go back to sleep", rightButtonText: "Attempt escape", leftStoryText: wC6Ld, rightStoryText: wC6Rd, leftNextChoiceId: "wec7", rightNextChoiceId: "weEsc")

//choice 6 lft
var wC6Ld =
"""
You turn over in your cot and close your eyes. The fastest gun in the west needs his rest you know.

As you awake you notice the sound of ringing bells. And the sheriff sitting patiently in a chair in front of your cell, leafing through some documents. As he notices you he says “good morning sunshine!” sporting his seemingly trademarked cheshire grin. “Or should i say good afternoon? Its nearly 11:45 you know.” he said coyley “being late for your own EXECUTIO- i mean DUEL is certainly a poor look.” he spoke, sucking his teeth in distaste. “Well we better hurry then” he said to himself and clapped loudly. Immediately a guard walks around the corner and into your cell, the same man that took your shoes the day before. He smiles his rotted fence of teeth at you once more before grabbing you by the collar and tossing you out of your cell. As your face meets the floorboards a heavy foot falls upon your back holding you in place as a set of hands wraps rope around your hands and ties them behind your back. “GET UP” the man with the horrible teeth roars at you as he grabs your collar once again and pulls you to your feet, choking you. He heards you into the street and shoves you over once again, dirt filling your eyes as you fall. A crowd begins to gather and you hear a man talking behind you. You turn to see the sheriff standing on a podium, addressing the crowd. “ARE WE GONNA LET THIS MAN DISRUPT THE SAFETY OF OUR TOWN??!”  he shouts. “NO!” the crowd responds enthusiastically. “Then lets show him why you dont mess with statesville” he said finally as he walks away from the podium and towards you. He stops in front of you and says “Cut him loose”, a man with a long beard and a knife cuts your bindings free and the sheriff tosses a revolver at your feet. “Good luck” he says. His grin spreading across his face, but never to his dead eyes.

“Please!” you plead to the crowd, “I didn't do anything wrong!”. “This man is trying to control you people with fear and hes using me to do it!” you scream. “Shut up!” Someone in the crowd screams back. “Youre horrible” another pipes in. The entire crowd turning into a chorus of insults and blame all directed towards you. Tears begin to fill your eyes as the malice of the people around you sinks in and your hope begins to turn to despair. “I CAN PROVE IT!” you scream over the crowd. Their shouts silenced by your scream, replaced now with curious murmurs. “He’s not protecting you from anything! Have the crime rates dropped since the enforcers came around?” you question the crowd, only to be met with more murmurs. “Thats because THEY ARE THE CRIMINALS!” you yell. “That man!” you say pointing at the sheriff, “has convinced you all that he can keep you safe, that without him you couldnt survive. But in reality he’s robbing you blind, And then demanding that you pay him and his goons to protect you FROM HIMSELF!!, The leader of the bandits that robbed the train yesterday had a tattoo of a steer on his right arm!”. Swiftly a boot crosses your vision and smashes into your face, the sheriff standing above you, his boot planted firmly over your mouth, pinning your face to the ground. “This scum is willing to say anything to ensure that he can live another day just to steal from and kill us!” the sheriff shouts to the crowd. “Dont let him turn us against each other” bellows loudly and is met with a roar of agreement from the crowd. “Lets gag him!” someone shouts, and immediately a rancid rag is shoved into your mouth and tied around your face. Your stomach upheaving as you breath in the smell of the rag over and over. The sheriff smiles at you as you wretch in the dirt. “Last chance” he says smiling, “Pick up the gun, or die right here” he cocks the hammer of his revolver back and lets you stare down the barrel. You quickly scramble to your feet and grab the gun, the barrel of the sheriff’s revolver shoved right in your face. “Now holster that, we’re going to stand back to back and take 10 paces forwards, after 10 paces you turn and shoot, you think you can wrap your tiny little brain around that?” the sheriff says to you. You nod and holster your gun as the crowd clears to the side of the streets and you and the sheriff stand back to back. “Ill count out the paces” says the sheriff as he begins to pace. “One!”,
You step forward one pace, “Two!” the clinking sound of bullets in the revolvers fills the air “Three!” dear god this rag tastes awful, “Four!” you can feel your heart creeping up your throat, “Five!” why cant i hear the clinking sound anymore, “Six!” your blood begins to boil.


"""

//choice 6 rgt
var wC6Rd =
"""

You scoot across the cell to where the guard is peacefully sleeping, making sure to remain as quiet as possible. As you near the guard you recognize the shoes on his feet as your own. Upon closer inspection of the mans face you recognize him to be the enforcer that you met on your first day in town. Although the whiff you caught of his breath would have been plenty to identify him. Carefully you reach through the bars your fingers nearly grasping the key ring, your heart pounding in your chest so loud you're convinced the enforcer can hear it. As your fingers close around the keyring the enforcer shifts in his chair and you yank the keys back into your cell as fast as you can. His sleeping grumbles permeate the air for a few seconds and eventually he quiets again. Your head pounding with adrenaline you look down and realize that you've just pissed yourself, “Great” you mutter as you quietly slide the key into the lock and swing your cell door open just enough for you to squeeze through, out of fear of the hinges creaking and waking the guard. As you near the exit you realize you have no shoes, your eyes catch a tattered old pair of dress shoes, barely more than socks. You look back at the sleeping guard and your new boots on his feet.

"""

//let westernEscapeChoice = Choice(id: "weEsc", leftButtonText: "Go get your boots", rightButtonText: "Take the dress shoes", leftStoryText: wEscLd, rightStoryText: wEscRd, leftNextChoiceId: nil, rightNextChoiceId: nil)


//escape choice lft
let wEscLd =
"""
You walk carefully over to the sleeping guard and crouch down, your hands gently grabbing the boot. You slowly begin to work the boot down the sleeping mans foot, inch by inch as he continues to snore until finally, the boot pulls free of his smelly foot. “Oh gross” you mutter under your breath as you realize that he wasn't wearing any socks. You place the boot on the ground and repeating the same process as with the first you gently grab the other boot. As youre working it down you hear a loud click. You look up at the guard to spot the silver end of a colt revolver and the last thing you remember is the taste of lead.

"""
//you died being greedy


//escape choice rgt
var wEscRd =
"""
You scowl regretfully as you grab the dress shoes, wishing they were your nice boots as you slide them on, Your big toe sticking through the end of the left one. “Better than nothing” you mutter to yourself and walk out the door. You walk back to the edge of town where you first got off the train, and begin to follow the tracks. Knowing that eventually you’ll come to another town and this nightmare will all be over.



YOUR PATIENCE AND CAREFUL THINKING ALLOWED YOU TO ESCAPE WITH YOUR LIFE!

"""
// GAME OVER: escape ending


//let westernChoice7 = Choice(id: "wec7", leftButtonText: "Turn around and throw your gun", rightButtonText: "Continue pacing", leftStoryText: wC7Ld, rightStoryText: wC7Rd, leftNextChoiceId: nil, rightNextChoiceId: nil)

//choice 7 lft
var wC7Ld =
"""
“Seven!” your instincts are all screaming at you that something is horribly wrong, “Eight!” no more clinking!!!! You look down at your holster and into the dark holes where silver bullets should be. “Nine!” you turn around and hurl your gun at the back of the sheriffs head, it was a throw that would have made randy johnson proud. The gun struck the sheriff and he immediately crumpled to the ground like a sack of potatoes. The crowd gasped in shock as you run towards the sheriff and pull up his sleeve before anyone can stop you. You rip the gag out of your mouth and scream “LOOK!” as you hold the crooked sheriffs arm in the air for the whole town to see. The people drew closer and began inspecting the tattoo, several of them recognizing it as the hand that took, their wallet, their necklace, their sons life. As reality began to sink into the hearts of the masses their demeanors began to change, and their malice redirected towards the crooked sheriff. Looking into the faces of those people you realized that the sheriff would soon find out “why you don't mess with statesville” .



Your keen observation skills helped overthrow the corrupt government of statesville. And ensure your own survival

"""
//GAME OVER: save Statesville ending

// choice 7 rgt
var wC7Rd =
"""
“Seven!” you can feel the sweat dripping from you, “Eight!”  why did i even come here  you think to yourself, “Nine!” your feet tense up, ready to turn, “Ten!”  you turn and unholster, no one is faster than you, not even this fraud of a sheriff. He just got outplayed at his own game, maybe he should have picked a different method of making an example of you. You aim down your sights before he’s even drawn his gun past his hip. You pull the trigger, smiling. CLICK, CLICK, dread fills your bones as you see the cylinder of your revolver turning.. Without bullets. And a piece of led stops you from worrying about it too much longer.

"""
// you died, hard to win a gunfight with air bullets
















let westernNode6 = ChoiceNode(deathText: wC7Rd, endingText: wC7Ld, text: wC6Ld, leftChoice: nil , rightChoice: nil , leftButtonTitle: "Turn around and throw your gun", rightButtonTitle: "Continue pacing")

let westernEscapeNode = ChoiceNode(deathText: wEscLd, endingText: wEscRd, text: wC6Rd, leftChoice: nil, rightChoice: nil, leftButtonTitle: "Go get your boots", rightButtonTitle: "Take the dress shoes")

let westernNode5 = ChoiceNode(deathText: nil, endingText: nil, text: wC5Ld, leftChoice: westernNode6, rightChoice: westernEscapeNode, leftButtonTitle: "Go back to sleep", rightButtonTitle: "Attempt escape")


let westernNode4 = ChoiceNode(deathText: wC5Rd, endingText: nil, text: wC4Rd, leftChoice: westernNode5, rightChoice: nil, leftButtonTitle: "Do nothing", rightButtonTitle: "Reach for the keys")


let westernNode3 = ChoiceNode(deathText: nil, endingText: wC4Ld, text: wC3Rd, leftChoice: nil, rightChoice: westernNode4, leftButtonTitle: "Give him your shoes", rightButtonTitle: "Refuse")

let westernNode2 = ChoiceNode(deathText: wC3Ld, endingText: nil, text: wC2Ld, leftChoice: nil, rightChoice: westernNode3, leftButtonTitle: "Solve things with violence", rightButtonTitle: "Explain that you were robbed" )

let westernNode1 = ChoiceNode (deathText: nil, endingText: wC2Rd,text: wC1Rd, leftChoice:  westernNode2, rightChoice: nil, leftButtonTitle: "Exit the train", rightButtonTitle: "Stay on the train")

let introNode = ChoiceNode(deathText: wC1Ld, endingText: nil ,text: westernStart, leftChoice: westernNode1, rightChoice: nil , leftButtonTitle: "Spit in the bag", rightButtonTitle: "Hand over your valuables")



