.text

main:   #input 1
	addi $2, $0, 5
	syscall
	
	add $8, $0, $2#horas
	
	#input 2
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2#minutos

	#input 3
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2#segundos
	
	#60 no reg 11
	addi $11, $0, 60
	
	#calculo - horas -> segundos
	mul $12, $11, $8
	mul $12, $12, $11
	
	#calculo - minutos -> segundos
	mul $13, $9, $11
	
	#soma total
	add $14, $12, $13
	add $14, $14, $10
	
	#adicionar no reg 4
	add $4, $0, $14
	
	
	#printar
	addi $2, $0, 1
	syscall
	
	#finalizar
	addi $2, $0, 10
	syscall
	
	
	
	
	
	
	
	
	
	
	