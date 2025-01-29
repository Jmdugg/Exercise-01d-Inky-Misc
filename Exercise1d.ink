/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shells = 0
VAR tide = 0 // 0 High tide, 1 Low tide 


-> seashore

== seashore ==
You are sitting on a beach. Waves rolls in and crash against the shore. On the horizon, you can see many boats like fish trawlers and barges. The breeze carries the smell of the sea to you. {Knot6: That dream was crazy realistic..you have a lot to think about...a lot about your life to change...maybe you should become an environmental activist...}

It is {advance_time()}
It is {advance_tide()}
{shells > 0: You have {shells} shells.}
+ {not Knot6} [Stroll down the beach] -> beach2
+ {Knot6}
-> END

== beach2 ==
You are further down the beach.

It is {advance_time()}
It is {advance_tide()}
{shells > 0: You have {shells} shells.}
*{time == 1} [Pick up some seashells] ->shell
+ [Stroll back up the beach] -> seashore
+ [Stroll further down the beach] -> beach3

== beach3 ==
The sand has started to even out into rocks that host little tidepools of life in them. Further ahead you can see a hole in the rocks filled with water. Maybe if you come back when the tide is low...
It is {advance_time()}
It is {advance_tide()}
{shells > 0: You have {shells} shells.}
*{tide == 0} [Explore cave] -> cave
+ [Stroll back up the beach] -> beach2

== cave ==
Low tide has revealed the opening to a cave in the rock. As you walk in you notice that the sand of the ocean floor is slowly receding into black volcanic rock. {shells: Littered all over the cave floor are those strange shiny ovals like the one you picked up earlier on the beach.} The cave has one passage that appears to have some kind of glow coming from it. 
{shells > 3: You have {shells} shells.}
+ [Investigate the glow] -> knot3 
* {shells} [Pick up shells] -> cave
+ [Go Back] -> beach3
-> END

== knot3 ==
You decide to go further into the cave and investigate the mysterious glow. As you round the corner you hear...growling? It actually sounds as if some kind of animal is in pain...do you want to press further?
+ [Investigate the noise] -> knot4
+ [Go back] -> Knot5
->END

== knot4 ==
You steel yourself and push onward. What you see is almost beyond your belief! It's a sea serpent curled up at the end of the tunnel, and it seems to be hurt. Scales are scattered across the cave floor. What do you do?
+ [Talk to it?] -> Knot6
+ [Leave] -> Knot5
-> END

== Knot5 ==
What a chicken! You flee from the cave and never look back, missing out on adventure and a story no one would believe if you told them.
-> END

== Knot6 ==
"um...hello?" and then after a beat of silence "...are you okay? How do I help you?"

The sea serpent responds through a clenched jaw and gritted teeth:
"Foolish human, you think you can help me? You can do nothing greater for me than to leave me alone, after all it is humans who caused me to be this way."

"us? but how is that possible?" 

The sea serpent opens is mouth and hisses:
"You humans and your trash and your greed and your need to always take! take! take! has left my ocean depleted and my home destroyed. See the state I am in and do not dare ask me again why this is your fault! Why, even now you carry my scales in your pocket as if they have always been yours!"

You feel conflicted...before this you were having a regular day on the beach. But now that you think about it... wasn't there trash also in the sand next to the shells? Didn't you see boats for miles but no fish or birds? You fish in your pocket for the shells, no, the sea serpent's scales. But...what can you do with them?
+ [Give them to the serpent] -> seashore
->END

== shell ==
~ shells = shells + 3
You can see that some shells have washed up on the shore from the afternoon tide. There's something shiny and oval shaped among them. You pick them up and pocket them.

-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
== function advance_tide ==
    ~ tide = tide + 1
    {
        - tide > 1:
            ~ tide = 0
    }
    
    {
        - tide == 0:
            ~ return "Low tide"
            
        - tide == 1: 
            ~ return "High tide"
    }
    
    
    
    ~ return tide
    
    
    
    
