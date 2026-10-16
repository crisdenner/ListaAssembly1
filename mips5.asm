.data
	msg1: .asciiz "\nInsira o cateto 1: "
	msg2: .asciiz "\nInsira o cateto 2: "
	msg3: .asciiz "\nValor Hipotenusa: "
.text
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
	
	mul $t0,$t0,$t0
	mul $t1,$t1,$t1
	
	add $t2,$t0,$t1
	mtc1 $t2, $f1         
	cvt.s.w $f1, $f1       
	sqrt.s $f1, $f1        
	
	li $v0,4
	la $a0,msg3
	syscall	
	
	mov.s $f12, $f1       
	li $v0, 2             
	syscall                
	
	
	