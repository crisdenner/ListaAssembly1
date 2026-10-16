.data
    msgPrompt:  .asciiz "\nDigite a altura em cm (pessoa): "
    msgMenor:   .asciiz "\nA menor altura do grupo e: "
    msgMaior:   .asciiz " cm\nA maior altura do grupo e: "
    cm:         .asciiz " cm\n"


.text
.globl main

main:
   
    li $s0, 0  
loop:

    beq $s0, 15, fim_loop


    li $v0, 4
    la $a0, msgPrompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0    

   
    bnez $s0, nao_e_o_primeiro
    move $s1, $t0       
    move $s2, $t0       
    j proxima_iteracao

nao_e_o_primeiro:
   
    blt $t0, $s1, atualiza_menor

  
    bgt $t0, $s2, atualiza_maior

    j proxima_iteracao

atualiza_menor:
    move $s1, $t0       
    j proxima_iteracao

atualiza_maior:
    move $s2, $t0        
    j proxima_iteracao

proxima_iteracao:
    addi $s0, $s0, 1    
    j loop

fim_loop:
  
    li $v0, 4
    la $a0, msgMenor
    syscall

    li $v0, 1
    move $a0, $s1       
    syscall

    li $v0, 4
    la $a0, msgMaior
    syscall

    li $v0, 1
    move $a0, $s2       
    syscall

    li $v0, 4
    la $a0, cm
    syscall

