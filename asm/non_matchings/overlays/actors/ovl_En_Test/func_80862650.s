.late_rodata
glabel D_808647CC
    .float 0.7

.text
glabel func_80862650
/* 03000 80862650 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03004 80862654 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 03008 80862658 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 0300C 8086265C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 03010 80862660 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03014 80862664 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03018 80862668 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0301C 8086266C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 03020 80862670 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03024 80862674 44061000 */  mfc1    $a2, $f2                   
/* 03028 80862678 44071000 */  mfc1    $a3, $f2                   
/* 0302C 8086267C 44050000 */  mfc1    $a1, $f0                   
/* 03030 80862680 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 03034 80862684 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 03038 80862688 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0303C 8086268C AFAF002C */  sw      $t7, 0x002C($sp)           
/* 03040 80862690 92180114 */  lbu     $t8, 0x0114($s0)           ## 00000114
/* 03044 80862694 57000047 */  bnel    $t8, $zero, .L808627B4     
/* 03048 80862698 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0304C 8086269C 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
/* 03050 808626A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03054 808626A4 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 03058 808626A8 57200006 */  bnel    $t9, $zero, .L808626C4     
/* 0305C 808626AC 81090843 */  lb      $t1, 0x0843($t0)           ## 00000843
/* 03060 808626B0 0C218BEA */  jal     func_80862FA8              
/* 03064 808626B4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 03068 808626B8 1000003E */  beq     $zero, $zero, .L808627B4   
/* 0306C 808626BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03070 808626C0 81090843 */  lb      $t1, 0x0843($t0)           ## 00000843
.L808626C4:
/* 03074 808626C4 51200032 */  beql    $t1, $zero, .L80862790     
/* 03078 808626C8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0307C 808626CC 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
/* 03080 808626D0 314B0008 */  andi    $t3, $t2, 0x0008           ## $t3 = 00000000
/* 03084 808626D4 11600017 */  beq     $t3, $zero, .L80862734     
/* 03088 808626D8 00000000 */  nop
/* 0308C 808626DC 860C007E */  lh      $t4, 0x007E($s0)           ## 0000007E
/* 03090 808626E0 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 03094 808626E4 018D1023 */  subu    $v0, $t4, $t5              
/* 03098 808626E8 00021400 */  sll     $v0, $v0, 16               
/* 0309C 808626EC 00021403 */  sra     $v0, $v0, 16               
/* 030A0 808626F0 04400003 */  bltz    $v0, .L80862700            
/* 030A4 808626F4 00021823 */  subu    $v1, $zero, $v0            
/* 030A8 808626F8 10000001 */  beq     $zero, $zero, .L80862700   
/* 030AC 808626FC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80862700:
/* 030B0 80862700 286138A4 */  slti    $at, $v1, 0x38A4           
/* 030B4 80862704 1020000B */  beq     $at, $zero, .L80862734     
/* 030B8 80862708 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 030BC 8086270C 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 030C0 80862710 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 030C4 80862714 4606203C */  c.lt.s  $f4, $f6                   
/* 030C8 80862718 00000000 */  nop
/* 030CC 8086271C 45000005 */  bc1f    .L80862734                 
/* 030D0 80862720 00000000 */  nop
/* 030D4 80862724 0C218754 */  jal     func_80861D50              
/* 030D8 80862728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 030DC 8086272C 10000015 */  beq     $zero, $zero, .L80862784   
/* 030E0 80862730 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
.L80862734:
/* 030E4 80862734 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 030E8 80862738 00000000 */  nop
/* 030EC 8086273C 3C018086 */  lui     $at, %hi(D_808647CC)       ## $at = 80860000
/* 030F0 80862740 C42847CC */  lwc1    $f8, %lo(D_808647CC)($at)  
/* 030F4 80862744 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 030F8 80862748 4600403C */  c.lt.s  $f8, $f0                   
/* 030FC 8086274C 00000000 */  nop
/* 03100 80862750 45000009 */  bc1f    .L80862778                 
/* 03104 80862754 00000000 */  nop
/* 03108 80862758 81CF0842 */  lb      $t7, 0x0842($t6)           ## 00000842
/* 0310C 8086275C 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 03110 80862760 11E10005 */  beq     $t7, $at, .L80862778       
/* 03114 80862764 00000000 */  nop
/* 03118 80862768 0C218653 */  jal     func_8086194C              
/* 0311C 8086276C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03120 80862770 10000004 */  beq     $zero, $zero, .L80862784   
/* 03124 80862774 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
.L80862778:
/* 03128 80862778 0C2187B0 */  jal     func_80861EC0              
/* 0312C 8086277C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03130 80862780 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
.L80862784:
/* 03134 80862784 1000000A */  beq     $zero, $zero, .L808627B0   
/* 03138 80862788 A21807C8 */  sb      $t8, 0x07C8($s0)           ## 000007C8
/* 0313C 8086278C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80862790:
/* 03140 80862790 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03144 80862794 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 03148 80862798 0C21907A */  jal     func_808641E8              
/* 0314C 8086279C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 03150 808627A0 14400003 */  bne     $v0, $zero, .L808627B0     
/* 03154 808627A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03158 808627A8 0C217EAC */  jal     func_8085FAB0              
/* 0315C 808627AC 8FA50034 */  lw      $a1, 0x0034($sp)           
.L808627B0:
/* 03160 808627B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808627B4:
/* 03164 808627B4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03168 808627B8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0316C 808627BC 03E00008 */  jr      $ra                        
/* 03170 808627C0 00000000 */  nop
