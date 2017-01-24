#Josh Hayter
#CECS 225
#Homework3
#Sotheanith Sok
#10/7/16

#Homework 3: MIPS Assembly Arithmetic

#Varaible: A:$16, B:$17, C:$18, D:$19, E:$20, F:$21, G:$22, H:$23
#Temporary Varaible: $8-$15

#Exercise 1: C = A + B
#	A = 50, B = 120
addi $16, $0, 50
addi $17, $0, 120
add $18, $16, $17

#Exercise 2: D = A - B
#	A = -30, B = -52
addi $16, $0, -30
addi $17, $0, -52
sub $19, $16, $17


#Exercise 3: F = (A + B - C)-(D - E)
#	A = 20, B = 60, C = 120, D = -150, E = -200
addi $16, $0, 20
addi $17, $0, 60
addi $18, $0, 120
addi $19, $0, -150
addi $20, $0, -200
add $8, $16, $17
sub $9, $8, $18
sub $10, $19, $20
sub $21, $9, $10



#Exercise 4: F = F - A + B
#	A = 20, B = 30, F = 0
addi $16, $0, 20
addi $17, $0, 30
addi $21, $0, 0
sub $8, $21, $16
add $21, $8, $17

#Exercise 5: G = B - A
#	A = 0x89AB, B = 0x98B3
addi $16, $0, 0x89AB
addi $17, $0, 0x98B3
sub $22, $17, $16


#Exercise 6: H = B + B + B + B + B
#	B = 0x1D
addi $17, $0, 0x1D
add $9, $17, $17
add $9, $9, $17
add $9, $9, $17
add $23, $9, $17

#Exercise 7: A = A - 0x1C
#	A = 25;
addi $16, $0, 25
sub $16, $16, 0x1C 

#Exercise 8: D = (G - E) + 200 - (F - B - 90)
#	B = 40; E = 100; F = 70; G = 240;
addi $17, $0, 40
addi $20, $0, 100
addi $21, $0, 70
addi $22, $0, 240
sub $8, $22, $20
add $9, $8, 200
sub $8, $21, $17
sub $10, $8, 90
sub $19, $9, $10

#Exercise 9: A = F + (D - G)
#	D = 456; F = 123; G = 0x44; B = 0xAB;
addi $19, $0, 456
addi $21, $0, 123
addi $22, $0, 0x44
addi $17, $0, 0xAB
sub $8, $19, $22
add $16, $21, $8

#Exercise 10: B = B - 0x1357
#	B = 0x2468;
addi $17, $0, 0x2468
sub $17, $17, 0x1357






