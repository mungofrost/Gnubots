#version 1.0b3
######################
#LICENSE
#
#As long as you retain this notice do what the fuck you want with the code
#(allowing for exception below) and buy me a cider if we ever meet and you 
#think it's worth it.  Mungo Frost.
#The only exception is that by introducing a variable name starting with 'my' 
#(myInt, myString etc.) you agree to name you firstborn (or next child if it's
#too late for that) Darth Algernon Kumquat Moncreif III.
#######################


############################
## SET UP VARIABLES
############################

#ROBOTS
r0 = int(1200*rand(0))
r1 = int(1200*rand(0))
r2 = int(1200*rand(0))
r3 = int(1200*rand(0))
r4 = int(1200*rand(0))
r5 = int(1200*rand(0))
r6 = int(1200*rand(0))
r7 = int(1200*rand(0))
r8 = int(1200*rand(0))
r9 = int(1200*rand(0))

#player

me = int(1200*rand(0))

#internals

plotitndX = 0
dead = 0

#####################
#set up plot
#####################
set title 'Gnubots!' font 'arial,18'
unset xtics
unset ytics
unset colorbox
set xrange [-0.5:59.5]
set yrange [-0.5:19.5]
set cbrange [-5:10]
set palette maxcolors 16
set palette defined (0 '#000099', 1 '#ff0000', 2 '#ff0000', 3 '#ff0000', 4 '#ff0000', 5 '#c0c0c0',\
6 '#669900', 7 '#804c00', 8 '#804c00', 9 '#804c00', 10 '#804c00', 11 '#804c00', 12 '#804c00', \
13 '#804c00', 14 '#804c00', 15 '#804c00')


#plotit
load 'plotit.gp'

#play game
load 'mainLoop.gp'
