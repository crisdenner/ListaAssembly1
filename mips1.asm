.data
	msg1: .asciiz "\nInsira Comprimento do terreno:"
	msg2: .asciiz "\nInsira Largura do terreno:"
	msg3: .asciiz "\nArea do terreno:"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	add $t1,$v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	add $t2,$v0, 0
	
	mul $t3,$t1,$t2
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, $zero
	syscall