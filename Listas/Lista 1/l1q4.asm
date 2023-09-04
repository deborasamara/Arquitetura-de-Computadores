.text

main: addi $2, $0, 5 #n1
	syscall
	
	add $8, $0, $2 #n1
	
	addi $2, $0, 5 #n2
	syscall
	
	add $9, $0, $2 #n2
	
	#pesos
	addi $10, $0, 4 #p1
	addi $11, $0, 6 #p2
	
	#media
	mul $12, $8, $10 #n1* p1
	mul $13, $9, $11 #n2 * p2
	
	add $14, $12, $13 # (n1* p1 + n2 * p2)
	
	add $11, $11, $10 # p1 + p2
	div $14, $11
	
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	
	
	
	
	
	
	
	
	