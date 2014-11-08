README Gnubots 1.0b3			Copyright Mungo Frost

0. INTRO

Gnubots is a port of the old BSD game 'Robots' to run within the gnuplot environment.  As this is a primarily intended as a plotting package rather than a cross platform programming environment it lacks certain (unnecessary) features traditionally considered useful.  These include - but are far from limited to - arrays, sane typing, nested if statements, control structures, multiple line if blocks, functions, non-global variables and anything even approaching abstraction. Even the ability to GOTO would be welcome.  The result is convoluted, unstable and bafflingly slow code spread over many files with apparently insane features forced upon the coder.  For this reason it remains a little used language for coding despite its Turing completeness and so this was written.  To the author’s knowledge it is the first functioning game with graphics written exclusivly within gnuplot.

http://en.wikipedia.org/wiki/Robots_%28BSD_game%29 - wikipedia article
http://ctho.org/games/robots/ - web based version

1. RUNNING

Gnubots is slow, probably buggy and liable to crash in new and exciting ways.  It looks nicest if the aspect ratio of the plot window is 3:1 and has been tested using the wxt terminal.  To run simply open gnuplot in interactive mode, navigate to the folder containing the program files and type "load 'robots.gp'".  The game should then start.

It's tested for 4.6 but should work on 4.4 at least.

2. GAMEPLAY

You control the blue man and can go up/down/left/right using 2/8/4/6 on the numpad.  5 teleports you to a random square.  Each turn the green robots will move in one of the four directions which bring it towards you fastest, your aim is to make them collide with each other killing them and leaving brown detritus.  Collision between robot and detritus will also kill the robot.  You must not be in the same place as the robots or detritus.

Pressing buttons before the program has moved the robots and is ready can result in fun.  Usually pressing e (replot) with the command window active will resolve this.

3. KNOWN ISSUES

	a. Spam in command window - cosmetic only
	b. Pressing hotkeys when it's not awaiting input breaks things

4. FUTURE FEATURES

There are various features which would be nice but for the sake of the programmer's sanity were omitted.

Option to choose number of robots.  Currently it is hard coded for 10, as there are no arrays making this flexible without doing something unholy like using separate textfiles to hold the position of each robot is problematic.  Simulating an array using word and words and a string might be possible though there is no replace word function which could be fun.

Option to change size of field.  Probably easier to do and left as an exercise for the serious player.

Diagonal movement.

Graphics.  It must be possible to draw a different image for different numbers in the matrix, achieving this may prove a noble quest.
