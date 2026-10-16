.data
	msg1: .asciiz "\nInsira quantidade de camisetas P: "
	msg2: .asciiz "\nInsira quantidade de camisetas M: "
	msg3: .asciiz "\nInsira quantidade de camisetas G: "
	msg4: .asciiz "\nTotal da compra:"
.text
main:
	li $t0,10
	li $t1,12
	li $t2,15
	
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
	
	li $v0, 5
	syscall
	
	mul $s2,$v0,$t2
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	add $s4,$s0,$s1
	add $s4,$s4,$s2
	
	li $v0, 1
	add $a0,$s4,$zero
	syscall
	