.data
	msg1: .asciiz "\nInsira o numero 1: "
	msg2: .asciiz "\nInsira o numero 2: "
	msg3: .asciiz "\nValor da divisão: "
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	add $t0,$v0,$zero
Igual0:	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	add $t1,$v0,$zero
	
	beqz $t1,Igual0
	
	div $t2,$t0,$t1
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,1
	add $a0,$t2,$zero
	syscall
	
	
	