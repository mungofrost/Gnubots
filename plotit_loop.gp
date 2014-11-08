#version 1.0b3

tmp = 0
#squared to catch dead robots
if (plotitndX**2 == r0**2) tmp = tmp + 1
if (plotitndX**2 == r1**2) tmp = tmp + 1
if (plotitndX**2 == r2**2) tmp = tmp + 1
if (plotitndX**2 == r3**2) tmp = tmp + 1
if (plotitndX**2 == r4**2) tmp = tmp + 1
if (plotitndX**2 == r5**2) tmp = tmp + 1
if (plotitndX**2 == r6**2) tmp = tmp + 1
if (plotitndX**2 == r7**2) tmp = tmp + 1
if (plotitndX**2 == r8**2) tmp = tmp + 1
if (plotitndX**2 == r9**2) tmp = tmp + 1
if (plotitndX**2 == me**2) tmp = tmp - 5

#check for player death
if (tmp < 0 && tmp != -5) dead = 1

#check for robodeath denoted by -ve position
#using if (tmp > 1) would be nice but nested ifs are broken
#squared to cope with already dead robots

if (abs(r0) == abs(r1)) r0 = r1 = -abs(r0)
if (abs(r0) == abs(r2)) r0 = r2 = -abs(r0)
if (abs(r0) == abs(r3)) r0 = r3 = -abs(r0)
if (abs(r0) == abs(r4)) r0 = r4 = -abs(r0)
if (abs(r0) == abs(r5)) r0 = r5 = -abs(r0)
if (abs(r0) == abs(r6)) r0 = r6 = -abs(r0)
if (abs(r0) == abs(r7)) r0 = r7 = -abs(r0)
if (abs(r0) == abs(r8)) r0 = r8 = -abs(r0)
if (abs(r0) == abs(r9)) r0 = r9 = -abs(r0)
if (abs(r1) == abs(r2)) r1 = r2 = -abs(r1)
if (abs(r1) == abs(r3)) r1 = r3 = -abs(r1)
if (abs(r1) == abs(r4)) r1 = r4 = -abs(r1)
if (abs(r1) == abs(r5)) r1 = r5 = -abs(r1)
if (abs(r1) == abs(r6)) r1 = r6 = -abs(r1)
if (abs(r1) == abs(r7)) r1 = r7 = -abs(r1)
if (abs(r1) == abs(r8)) r1 = r8 = -abs(r1)
if (abs(r1) == abs(r9)) r1 = r9 = -abs(r1)
if (abs(r2) == abs(r3)) r2 = r3 = -abs(r2)
if (abs(r2) == abs(r4)) r2 = r4 = -abs(r2)
if (abs(r2) == abs(r5)) r2 = r5 = -abs(r2)
if (abs(r2) == abs(r6)) r2 = r6 = -abs(r2)
if (abs(r2) == abs(r7)) r2 = r7 = -abs(r2)
if (abs(r2) == abs(r8)) r2 = r8 = -abs(r2)
if (abs(r2) == abs(r9)) r2 = r9 = -abs(r2)
if (abs(r3) == abs(r4)) r3 = r4 = -abs(r3)
if (abs(r3) == abs(r5)) r3 = r5 = -abs(r3)
if (abs(r3) == abs(r6)) r3 = r6 = -abs(r3)
if (abs(r3) == abs(r7)) r3 = r7 = -abs(r3)
if (abs(r3) == abs(r8)) r3 = r8 = -abs(r3)
if (abs(r3) == abs(r9)) r3 = r9 = -abs(r3)
if (abs(r4) == abs(r5)) r4 = r5 = -abs(r4)
if (abs(r4) == abs(r6)) r4 = r6 = -abs(r4)
if (abs(r4) == abs(r7)) r4 = r7 = -abs(r4)
if (abs(r4) == abs(r8)) r4 = r8 = -abs(r4)
if (abs(r4) == abs(r9)) r4 = r9 = -abs(r4)
if (abs(r5) == abs(r6)) r5 = r6 = -abs(r5)
if (abs(r5) == abs(r7)) r5 = r7 = -abs(r5)
if (abs(r5) == abs(r8)) r5 = r8 = -abs(r5)
if (abs(r5) == abs(r9)) r5 = r9 = -abs(r5)
if (abs(r6) == abs(r7)) r6 = r7 = -abs(r6)
if (abs(r6) == abs(r8)) r6 = r8 = -abs(r6)
if (abs(r6) == abs(r9)) r6 = r9 = -abs(r6)
if (abs(r7) == abs(r8)) r7 = r8 = -abs(r7)
if (abs(r7) == abs(r9)) r7 = r9 = -abs(r7)
if (abs(r8) == abs(r9)) r8 = r9 = -abs(r8)

plotStr = plotStr.tmp.' '

#print line if needed
if ((plotitndX % 60) == 0)	print plotStr
if ((plotitndX % 60) == 0)	plotStr = ''

plotitndX = plotitndX + 1
if (plotitndX < 1201) reread
