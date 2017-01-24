.data
array:	.word	1, 5, 12, 4, 10

.text 
	addi $11, $0, 0
	addi $10, $0, 10
	addi $7, $0, 7
	addi $27, $0, 0
L1:	lw $13, array($11)
	beq $13, $10, L4
		slt $12, $13, $7
		beq $12, $0, L2
			addi $27, $27, 4
			j L3
	L2:	add $27, $27, $13
L3:	addi $11, $11, 4
	j L1
L4: