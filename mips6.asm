.data
	msg1: .asciiz "\nInsira primeiro numero: "
	msg2: .asciiz "\nInsira segundo numero: "
	msg3: .asciiz "\nTotal multiuplicação: "
	msg4: .asciiz "\nTotal soma: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0,5
	syscall
	add $t0,$v0,$zero
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0,5
	syscall
	add $t1,$v0,$zero
	
	beq $t0,$t1,Se
	
	mul $t2,$t1,$t0
	li $v0, 4
	la $a0,msg3
	syscall
	
	li $v0,1
	add $a0,$t2,$zero
	syscall
	j Fim
Se:
	add $t2,$t1,$t0
	li $v0, 4
	la $a0,msg4
	syscall
	
	li $v0,1
	add $a0,$t2,$zero
	syscall

Fim:
	
	