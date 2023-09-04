.text

main:
	addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #segundos
	
	#60
	addi $9, $0, 60
	
	#calcular duracao em h:m:s
	div $8, $9
	
	mfhi $10 #segundos
	mflo $8 
	
	div $8, $9
	mfhi $11 #min
	mflo $8 #hora
	
	#:
	addi $12, $0, ':'
	
	#H
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	# :
	add $4, $0, $12
	addi $2, $0, 11
	syscall
	
	# M
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	# :
	add $4, $0, $12
	addi $2, $0, 11
	syscall
	
	# S
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	
	#fim da execução
	addi $2, $0, 10
	syscall
	