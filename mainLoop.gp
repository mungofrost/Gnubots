#version 1.0b3

#refresh plot
replot

#get input

pause mouse keypress
if (MOUSE_KEY != 50 && MOUSE_KEY != 52 && MOUSE_KEY != 53 && MOUSE_KEY != 54 && MOUSE_KEY != 56) reread

#move player
#50 down, 52 left, 53 teleport, 54 right, 56 up
#down so add 60 to position
if (MOUSE_KEY == 56 && (me+60)<1201) me = me + 60
#left so take 1 from position
if (MOUSE_KEY == 52 && ((me-1)%60 != 0)) me = me - 1
#right so add 1 to position
if (MOUSE_KEY == 54 && ((me+1)%60 != 1)) me = me + 1
#up so take 60 from position
if (MOUSE_KEY == 50 && (me-60)>0) me = me - 60
#teleport
if (MOUSE_KEY == 53) me = int(1200*rand(0))

#update screen
load 'plotit.gp'

#check death
if (dead == 1) set label "You Are Dead" at 16,10 front font "arial,20"
replot
#if (dead == 1) pause -1
if (dead == 1) unset label
if (dead == 1) unset print
if (dead == 1) exit

#move robots lots of copy pasta due to the appaling way gnuplot handles variables
#this could be done with a horriffic piecewise function probably but it's complex
#enough as it is because commenting is a bit borken (no comment after \)

#r0
dx = ((r0-1)%60) - ((me-1)%60)
dy = int(r0/60) - int(me/60)
if (r0<0);\
else if (dy*dy > dx*dx && dy > 0 && (r0-60)>0) r0 = r0 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r0+60) < 1201) r0 = r0 + 60; \
else if (dx > 0 && ((r0-1)%60 != 0)) r0 = r0 - 1; \
else if (dx < 0 && ((r0+1)%60 != 1)) r0 = r0 + 1

#r1
dx = ((r1-1)%60) - ((me-1)%60)
dy = int(r1/60) - int(me/60)
if (r1<0);\
else if (dy*dy > dx*dx && dy > 0 && (r1-60)>0) r1 = r1 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r1+60) < 1201) r1 = r1 + 60; \
else if (dx > 0 && ((r1-1)%60 != 0)) r1 = r1 - 1; \
else if (dx < 0 && ((r1+1)%60 != 1)) r1 = r1 + 1

#r2
dx = ((r2-1)%60) - ((me-1)%60)
dy = int(r2/60) - int(me/60)
if (r2<0);\
else if (dy*dy > dx*dx && dy > 0 && (r2-60)>0) r2 = r2 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r2+60) < 1201) r2 = r2 + 60; \
else if (dx > 0 && ((r2-1)%60 != 0)) r2 = r2 - 1; \
else if (dx < 0 && ((r2+1)%60 != 1)) r2 = r2 + 1

#r3
dx = ((r3-1)%60) - ((me-1)%60)
dy = int(r3/60) - int(me/60)
if (r3<0);\
else if (dy*dy > dx*dx && dy > 0 && (r3-60)>0) r3 = r3 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r3+60) < 1201) r3 = r3 + 60; \
else if (dx > 0 && ((r3-1)%60 != 0)) r3 = r3 - 1; \
else if (dx < 0 && ((r3+1)%60 != 1)) r3 = r3 + 1

#r4
dx = ((r4-1)%60) - ((me-1)%60)
dy = int(r4/60) - int(me/60)
if (r4<0);\
else if (dy*dy > dx*dx && dy > 0 && (r4-60)>0) r4 = r4 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r4+60) < 1201) r4 = r4 + 60; \
else if (dx > 0 && ((r4-1)%60 != 0)) r4 = r4 - 1; \
else if (dx < 0 && ((r4+1)%60 != 1)) r4 = r4 + 1

#r5
dx = ((r5-1)%60) - ((me-1)%60)
dy = int(r5/60) - int(me/60)
if (r5<0);\
else if (dy*dy > dx*dx && dy > 0 && (r5-60)>0) r5 = r5 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r5+60) < 1201) r5 = r5 + 60; \
else if (dx > 0 && ((r5-1)%60 != 0)) r5 = r5 - 1; \
else if (dx < 0 && ((r5+1)%60 != 1)) r5 = r5 + 1

#r6
dx = ((r6-1)%60) - ((me-1)%60)
dy = int(r6/60) - int(me/60)
if (r6<0);\
else if (dy*dy > dx*dx && dy > 0 && (r6-60)>0) r6 = r6 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r6+60) < 1201) r6 = r6 + 60; \
else if (dx > 0 && ((r6-1)%60 != 0)) r6 = r6 - 1; \
else if (dx < 0 && ((r6+1)%60 != 1)) r6 = r6 + 1

#r7
dx = ((r7-1)%60) - ((me-1)%60)
dy = int(r7/60) - int(me/60)
if (r7<0);\
else if (dy*dy > dx*dx && dy > 0 && (r7-60)>0) r7 = r7 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r7+60) < 1201) r7 = r7 + 60; \
else if (dx > 0 && ((r7-1)%60 != 0)) r7 = r7 - 1; \
else if (dx < 0 && ((r7+1)%60 != 1)) r7 = r7 + 1

#r8
dx = ((r8-1)%60) - ((me-1)%60)
dy = int(r8/60) - int(me/60)
if (r8<0);\
else if (dy*dy > dx*dx && dy > 0 && (r8-60)>0) r8 = r8 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r8+60) < 1201) r8 = r8 + 60; \
else if (dx > 0 && ((r8-1)%60 != 0)) r8 = r8 - 1; \
else if (dx < 0 && ((r8+1)%60 != 1)) r8 = r8 + 1

#r9
dx = ((r9-1)%60) - ((me-1)%60)
dy = int(r9/60) - int(me/60)
if (r9<0);\
else if (dy*dy > dx*dx && dy > 0 && (r9-60)>0) r9 = r9 - 60 ; \
else if (dy*dy > dx*dx && dy < 0 && (r9+60) < 1201) r9 = r9 + 60; \
else if (dx > 0 && ((r9-1)%60 != 0)) r9 = r9 - 1; \
else if (dx < 0 && ((r9+1)%60 != 1)) r9 = r9 + 1

#update and replot
load 'plotit.gp'
#check death
if (dead == 1) set label "You Are Dead" at 16,10 front font "arial,20"
replot
#if (dead == 1) pause -1
if (dead == 1) unset label
if (dead == 1) unset print
if (dead == 1) exit
#check robo death
if (r0<0 && r1<0 && r2<0 && r3<0 && r4<0 && r5<0 && r6<0 && r7<0 && r8<0 &&r9<0) set label "You win!" at 16,10 front font "arial,25"
if (r0<0 && r1<0 && r2<0 && r3<0 && r4<0 && r5<0 && r6<0 && r7<0 && r8<0 &&r9<0) replot
if (r0<0 && r1<0 && r2<0 && r3<0 && r4<0 && r5<0 && r6<0 && r7<0 && r8<0 &&r9<0) unset print
if (r0<0 && r1<0 && r2<0 && r3<0 && r4<0 && r5<0 && r6<0 && r7<0 && r8<0 &&r9<0) unset label
if (r0<0 && r1<0 && r2<0 && r3<0 && r4<0 && r5<0 && r6<0 && r7<0 && r8<0 &&r9<0) exit

#next turn
reread
