


#
for (i = 0; i < SizeN; i++)
      if (A[i] > B[i])
          C[i] = 1;
      else 
          C[i] = -1;


#


la $s0,ArrayA                       ArrayA[1]
la $s1,ArrayB
la $s2,ArrayC
la $s3,SizeN                        size=10
lw $s3,0($s3)
li $t0,0

while:
    beq $t0,$s3,endwhile
    lw $t1,0($s0)         ArrayA[0]
    lw $t2,0($s1)         ArrayB[0]
    bgt $t1,$t2,if        ArrayA[0] > ArrayB[0] it will go to if
    beq $0,$0,else
if:
    li $t3,1
    sw $t3,0($s2)
    addi $t0,t0,1
    addi $s0,$s0,4
    addi $s1,$s1,4
    addi $s2,$s2,4
    beq $0,$0,while
else:
    li $t3,-1
    sw $t3,0($s2)
    addi $t0,t0,1
    addi $s0,$s0,4
    addi $s1,$s1,4
    addi $s2,$s2,4
    beq $0,$0,while
endwhile:
    #rest of the code








