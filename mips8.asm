.data
	msg1: .asciiz "\nInsira o valor: "
	msg2: .asciiz "\nResultado do dobro do valor: "
	msg3: .asciiz "\nResultado do triplo do valor: "
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	add $t0,$v0,$zero

	bltz  $t0,Negativo
	
	mul $t1,$t0,2
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,1
	add $a0,$t1,$zero
	syscall
	j Fim
	
Negativo:
	mul $t1,$t0,3
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,1
	add $a0,$t1,$zero
	syscall


Fim: