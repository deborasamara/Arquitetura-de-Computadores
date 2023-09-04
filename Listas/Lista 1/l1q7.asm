.text
main: addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	addi $9, $0, 10
	
	div $8, $9
	mfhi $10 #unidade - 1 numero
	mflo $8 #o que sobrou do numero
	
	div $8, $9 
	mfhi $11 #dezena - 2 numero
	mflo $8 #o que sobrou do numero
	
	div $8, $9 
	mfhi $12 #centena - 3 numero
	mflo $8 # milhar - 4 numero
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	