.data
	msgMes: .asciiz "Entre com o mes (MM):\n"
	msgDia: .asciiz "Entre com o dia (DD):\n"
	msgAno: .asciiz "Entre com o ano (AAAA):\n"
	msgMesInvalida: .asciiz "Mes invalido.\n"
	msgDiaInvalido: .asciiz "Dia invalido.\n"
	msgAnoInvalido: .asciiz "Ano invalido.\n"
	msgData: .asciiz "\nData Atual: "
	zero: .asciiz "0"
	barra: .asciiz "/"
	quebra: .asciiz "\n"
	
.text
	main:
	
	  jal recebeMes
	  move $t5, $v0
	  jal recebeDia
	  move $t6, $v0
	  jal recebeAno
	  move $t7, $v0
	  
	  li $t4, 10
	  
	  li $v0, 4
	  la $a0, msgData     
	  syscall
	  
	  blt $t5, $t4   MesMenorDez               
	  li $v0, 1
	  move $a0, $t5      
	  syscall	  
	  li $v0, 4
	  la $a0, barra       
	  syscall
	  
	  blt $t6, $t4   DiaMenorDez                
	  li $v0, 1
	  move $a0, $t6          
	  syscall
	  li $v0, 4
	  la $a0, barra          
	  syscall
	  li $v0, 1
	  move $a0, $t7            
	  syscall
	  li $v0, 4
	  la $a0, quebra          
	  syscall
	  li $v0, 10                
	  syscall
	  
	  	MesMenorDez:
	  	  li $v0, 4
	  	  la $a0, zero       
	  	  syscall
	  	  li $v0, 1
	  	  move $a0, $t5     
	  	  syscall
	  	  li $v0, 4
	  	  la $a0, barra       	
	  	  syscall
	  	  
	  	  blt $t6, $t4   DiaMenorDez                 
	  	  li $v0, 1
	  	  move $a0, $t6      
	  	  syscall
	  	  li $v0, 4
	  	  la $a0, barra      
	  	  syscall  
	  	  li $v0, 1
	  	  move $a0, $t7             
	  	  syscall
	  	  li $v0, 4
	          la $a0, quebra         
	  	  syscall
		  li $v0, 10                
	          syscall
	          
	          
	          	DiaMenorDez:
	          	  li $v0, 4
	          	  la $a0, zero       
	          	  syscall
	          	  li $v0, 1
	          	  move $a0, $t6     
	          	  syscall
	          	  li $v0, 4
	          	  la $a0, barra      
	          	  syscall
	          	  li $v0, 1
	          	  move $a0, $t7            
	          	  syscall
	          	  li $v0, 4
	 		  la $a0, quebra          
	  	          syscall
	          	  li $v0, 10               
	          	  syscall
	          	  
	          	  
	  	  
        
	recebeMes:
	
	  li $v0, 4   
	  la $a0, msgMes   
	  syscall
	  
	  li $v0, 5   
	  syscall
	  move $t0, $v0     
	  li $t1, 12  
	  
	  whileMes: 
	    ble $t0, $t1 whileMesDois   
	    li $v0, 4
	    la $a0, msgMesInvalida
	    syscall
	    li $v0, 4
	    la $a0, msgMes
	    syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0    
	    j whileMes
	     	    	
	  whileMesDois:
	    bgt $t0, $zero whileMesTres  
            li $v0, 4
            la $a0, msgMesInvalida
            syscall
            li $v0, 4
	    la $a0, msgMes
	    syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0     
	    j whileMes
                       
	  whileMesTres:
	    move $v0, $t0          
	    jr $ra
	      
	      
	  
	recebeDia:
	  li $v0, 4
	  la $a0, msgDia
	  syscall
	  
	  li $v0, 5   
	  syscall
	  move $t0, $v0     
	  li $t1, 31  	  
	  
	  whileDia: 
	    ble $t0, $t1 whileDiaDois  
	    li $v0, 4
	    la $a0, msgDiaInvalido
	    syscall
	    li $v0, 4
	    la $a0, msgDia
	    syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0     
	    j whileDia
	       	
	  whileDiaDois:
	    bgt $t0, $zero whileDiaTres   
            li $v0, 4
            la $a0, msgDiaInvalido
            syscall
            li $v0, 4
	    la $a0, msgDia
	    syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0     
	    j whileDia
                         
	  whileDiaTres:
	    move $v0, $t0          
	    jr $ra
	  
	  
	 	  	  
	recebeAno:	  
	  li $v0, 4
	  la $a0, msgAno
	  syscall
	  
	  li $v0, 5   
	  syscall
	  move $t0, $v0     
	  li $t1, 2050   
	  
	  whileAno: 
	    ble $t0, $t1 whileAnoDois   
	    li $v0, 4
	    la $a0, msgAnoInvalido
	    syscall
	    li $v0, 4
	    la $a0, msgAno
	    syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0     
	    j whileAno
	  
	 whileAnoDois:
       	    li $t1, 1980
	    bge $t0, $t1 whileAnoTres   
            li $v0, 4
            la $a0, msgAnoInvalido
            syscall
            li $v0, 4
	    la $a0, msgAno
            syscall
	    li $v0, 5   
	    syscall
	    move $t0, $v0     
	    j whileAno
	    
	 whileAnoTres:
	    move $v0, $t0          
	    jr $ra
                  
                  
	  
	  
	  