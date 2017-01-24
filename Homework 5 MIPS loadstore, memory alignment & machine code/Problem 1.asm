.data
z: .word 0
array: .word 5,10,15,20,25

.text
addi $20, $0, 16 	#$20 = 16
addi $21, $0, 8		#$21= 8
lw $22, array($20)	#$22=array[4]
lw $23, array($21)	#$23=array[2]
lw $24, array($0)	#$24=array[0]
sub $25, $22, $23	#$25=$22-$23
add $25, $25, $24	#$25=$25+$24
sw $25, z($0)		#z=$25