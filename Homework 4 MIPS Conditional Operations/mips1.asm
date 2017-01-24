#Josh Hayter
#CECS 225
#Homework 4 MIPS Conditional Operations
#Sotheanith Sok

#Exercise 1: if/else logic
addi $6, $0, 0x30 		#$6 = 0x30
slt $7, $4, $6 			#Is $4 < $6?
beq $7, $0, not_less 		#If $4 < $6, do:
	addi $1, $0, 0x3000 	#$1 = 0x3000
	addi $2, $0, 0x6000	#$2 = 0x6000
not_less:			#else
	beq $4, $3, equal	#if $4 == $3 do:
	addi $3, $4, $0		#$3 = $4
equal:				#else
	sub $5, $4, $3		#$5 = $4 - $3

#Exercise 2 : while loop exercise
addi $3, $0, 4			#$3 = 4
startWhileLoop:			#Start loop
	beq $4, $3, endWhileLoop	#if ($3 = 4), end loop
	add $4, $4, $2		#else, $4= $4+ $2
	j start_loop		#restart loop	
endWhileLoop:			#end loop

#Exercise 3 : for loop exercise
addi $1, $0, 10			# $1 = 10
addi $20, $0, 20		# $20 = 20
startForLoop:			# Start Loop
	slt $2, $1, $20		# Is $2 < $1?
	beq $2, $0, endForLoop	# if $2 >= $1, end loop
	add $1, $1, 1		# else $1++
	sub $20, $20, 1		# $20--
	j startForLoop
endForLoop:			# end loop
