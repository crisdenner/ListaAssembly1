.data
    msgPrompt:  .asciiz "\nDigite um numero (negativo para sair): "
    msgErro:    .asciiz "\nNumero invalido! Digite apenas valores entre 0 e 100.\n"
    msgRes1:    .asciiz "\nQuantidade no intervalo [0-25]: "
    msgRes2:    .asciiz "\nQuantidade no intervalo [26-50]: "
    msgRes3:    .asciiz "\nQuantidade no intervalo [51-75]: "
    msgRes4:    .asciiz "\nQuantidade no intervalo [76-100]: "


.text


main:
    
    li $s1, 0      
    li $s2, 0       
    li $s3, 0      
    li $s4, 0      

loop:
 
    li $v0, 4
    la $a0, msgPrompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0     

   
    bltz $t0, fim_loop

   
    bgt $t0, 100, erro_entrada

 
    ble $t0, 25, inc_intervalo1
    ble $t0, 50, inc_intervalo2
    ble $t0, 75, inc_intervalo3    
    j inc_intervalo4               

inc_intervalo1:
    addi $s1, $s1, 1
    j loop

inc_intervalo2:
    addi $s2, $s2, 1
    j loop

inc_intervalo3:
    addi $s3, $s3, 1
    j loop

inc_intervalo4:
    addi $s4, $s4, 1
    j loop

erro_entrada:

    li $v0, 4
    la $a0, msgErro
    syscall
    j loop

fim_loop:
 
    li $v0, 4
    la $a0, msgRes1
    syscall
    li $v0, 1
    move $a0, $s1
    syscall
   

 
    li $v0, 4
    la $a0, msgRes2
    syscall
    li $v0, 1
    move $a0, $s2
    syscall


    li $v0, 4
    la $a0, msgRes3
    syscall
    li $v0, 1
    move $a0, $s3
    syscall
 

    li $v0, 4
    la $a0, msgRes4
    syscall
    li $v0, 1
    move $a0, $s4
    syscall
 

