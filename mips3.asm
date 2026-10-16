.data
	msg1: .asciiz "\nInsira as horas trabalhadas:"
	msg2: .asciiz "\nInsira as horas extras:"
	msg3: .asciiz "\nInsira o desconto:"
	msg4: .asciiz "\nTotal Salario Liquido:"
.text
main:
	li $t0,10
	li $t1,15
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	mul $s0,$v0,$t0
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	mul $s1,$v0,$t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0,5
	syscall
	add $t2,$v0,$zero
	
	add $s2,$s0,$s1
	sub $s3,$s2,$t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0,1
	add $a0,$s3,$zero
	syscall
	
