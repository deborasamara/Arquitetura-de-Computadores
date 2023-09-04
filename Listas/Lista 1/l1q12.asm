.text
	# Deslocar para a esquerda = multiplicar por 2
main: 
	#insercao de dados
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #n1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 #n2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 #n3
	
	addi $11, $0, 27 #pesos
	
	#calculo ( n1*3 + n2*9 + n3*15) / (27)
	sll $12, $8, 1
	add $12, $12, $8 #libera 8
	
	sll $13, $9, 3
	add $13, $13, $9 #libera 9
	
	sll $14, $10, 4
	sub $14, $14, $10 #libera 10
	
	
	add $12, $12, $13
	add $12, $12, $14
	
	
	div $12, $11
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	