#version 1.0b3

#method to plot the positions

#at each position check for a robot and set a string to either 
#0 (empty), 1(robot), >1(junkpile), -5 player, -5<pos<0 deadplayer
plotStr = ''
plotitndX = 1
printStr = 'map.robo'
set print printStr
load 'plotit_loop.gp'
plot printStr matrix with image
