.data
	msg1: .asciiz "\nInsira o valor: "
	msg2: .asciiz "\nResultado da soma do valor impar: "
	msg3: .asciiz "\nResultado da soma do valor par: "
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	add $t0,$v0,$zero
	
	rem $s0,$t0,2
	
	beqz $s0,Par
	
	add $t1,$t0,8
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,1
	add $a0,$t1,$zero
	syscall
	j Fim
	
Par:
	add $t1,$t0,5
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,1
	add $a0,$t1,$zero
	syscall


Fim: