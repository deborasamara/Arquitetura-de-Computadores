.text
main: addi $2, $0, 5 # adiciona 5 ao $2
	syscall # chama o serviço ler inteiro
	
	sll $4, $2, 1 # aloca o numero lido em $4 e move uma casa. Intero x 2
	
	addi $2, $0, 1 # adiciona 1 ao $2
	syscall # chama o serviço de printar inteiro
	
	addi $2, $0, 10 # adiciona num 10 em $2
      	syscall # chama o serviço de fim da execução
      	
      	
	
	
      
      
      