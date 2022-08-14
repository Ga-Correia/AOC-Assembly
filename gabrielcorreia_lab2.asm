.data
	instrucao: .asciiz "Insira a mensagem: "
	msgContChar: .asciiz "Numero total de caracteres: "
	enter: .asciiz "\n"
	msgCripto: .asciiz "Mensagem criptografada: "
	msgAserCripto: .space 1000000

.text
	main:      
          li $v0, 4
          la $a0, instrucao   
          syscall

          li $v0, 8   
          la $a0, msgAserCripto   
          li $a1, 1000000
          move $t0, $a0   
          syscall
          
          li $t1, -1 
          
	whileContAndCripto:
          lb  $t4, ($t0)
          beq $t4, $zero, termina
          
          beq $t4, 111, trocaOporZero
          beq $t4, 79, trocaOporZero
          beq $t4, 105, trocaIpor1
          beq $t4, 73 trocaIpor1
          beq $t4, 122 trocaZpor2
          beq $t4, 90 trocaZpor2
          beq $t4, 101 trocaEpor3
          beq $t4, 69 trocaEpor3
          beq $t4, 97 trocaApor4
          beq $t4, 65 trocaApor4
          beq $t4, 115 trocaSpor5
          beq $t4, 83 trocaSpor5
          beq $t4, 103 trocaGpor6
          beq $t4, 71 trocaGpor6
          beq $t4, 116 trocaTpor7
          beq $t4, 84 trocaTpor7
          beq $t4, 98 trocaBpor8
          beq $t4, 66 trocaBpor8
          beq $t4, 112 trocaPpor9
          beq $t4, 80 trocaPpor9
          
          beq $t4, 48 trocaZeroporO
          beq $t4, 49 troca1porI
          beq $t4, 50 troca2porZ
          beq $t4, 51 troca3porE
          beq $t4, 52 troca4porA
          beq $t4, 53 troca5porS
          beq $t4, 54 troca6porG
          beq $t4, 55 troca7porT
          beq $t4, 56 troca8porB
          beq $t4, 57 troca9porP
          
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaOporZero:
          li $t2, 48
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaIpor1:
          li $t2, 49
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaZpor2:
          li $t2, 50
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaEpor3:
          li $t2, 51
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaApor4:
          li $t2, 52
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaSpor5:
          li $t2, 53
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaGpor6:
          li $t2, 54
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaTpor7:
          li $t2, 55
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaBpor8:
          li $t2, 56
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaPpor9:
          li $t2, 57
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        trocaZeroporO:
          li $t2, 79
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca1porI:
          li $t2, 73
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca2porZ:
          li $t2, 90
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
         
        troca3porE:
          li $t2, 69
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca4porA:
          li $t2, 65
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
             
        troca5porS:
          li $t2, 83
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca6porG:
          li $t2, 71
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca7porT:
          li $t2, 84
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca8porB:
          li $t2, 66
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
        troca9porP:
          li $t2, 80
          sb $t2, ($t0)
          add $t0, $t0, 1
          addi $t1, $t1, 1
          j whileContAndCripto
          
           
	termina:
	  li  $v0, 4 
          la  $a0, msgContChar     
          syscall
          
          move $t3, $t1
          li $v0, 1
	  move $a0, $t3
	  syscall
	  
	  li $v0, 4 
	  la $a0, enter      
          syscall
	  
	  li $v0, 4 
	  la $a0, msgCripto      
          syscall
	  
	  la $t5 msgAserCripto
	  li $v0, 4 
	  move $a0, $t5           
          syscall

          li $v0, 10  
          syscall
