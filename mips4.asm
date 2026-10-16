.data
	msg1: .asciiz "\nInsira base maior: "
	msg2: .asciiz "\nInsira base menor: "
	msg3: .asciiz "\nInsira altura: "
	msg4: .asciiz "\nArea do trapezio é: "
.text
main:
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	add $t0,$v0,$zero
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	add $t1,$v0,$zero
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,5
	syscall
	add $t2,$v0,$zero
	
	add $s1,$t0,$t1
	mul $s1,$s1,$t2
	div $s1,$s1,2
	
	li $v0,4
	la $a0,msg4
	syscall
	
	li $v0,1
	add $a0,$s1,$zero
	syscall
	
	
	