.text

main: addi $2, $0, 5 #chama serviço de ler inteiro
	syscall
	
	add $8,$0, $2 # o número alocado
	
	addi $9, $0, 10
	
	div $8, $9
	
	mfhi $11
	mflo $8
	
	div $8, $9
	mfhi $12
	mflo $13
	
	add $12, $12, $13
	add $12, $12, $11
	
	add $4, $0, $12
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	