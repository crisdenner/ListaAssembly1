.data
    msg1:   .asciiz "\nDigite o primeiro valor: "
    msg2:   .asciiz "\nDigite o segundo valor: "
    msg3: .asciiz "\nO resto da divisao do maior pelo menor e: "


.text


main:
 
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0     

   
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0      

  
    bgt $t0, $t1, Maior 
    
 
    move $t2, $t1       
    move $t3, $t0     
    j Calcular

Maior:
    move $t2, $t0      
    move $t3, $t1      

Calcular:

    div $s0, $t2, $t3   

 
    mul $s1, $s0, $t3  

 
    sub $s2, $t2, $s1 


    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $s2    
    syscall

