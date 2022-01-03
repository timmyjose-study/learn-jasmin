## Branching instructions

The following instructions pop a single item off the stack, process it, and then branch accordingly:

ifeq    jump if zero

ifnull  jump if null reference

iflt    jump if less than zero

ifle    jump if less than or equal to zero

ifne    jump if not equal to zero

ifnonnull jump if not null reference

ifgt    jump if greater than zero

ifge    jump if greater than or equal to zero


The following instructions pop two items off the stack, process them, and then branch accordingly:

if_icmpeq   jump if two integers are equal

if_icmpne   jump if two integers are not equal

if_icmplt   jump if the first integer is less than the second integer

if_icmpgt   jump if the first integer if greater than the second integer

if_icmple   jump if the first integer is less than or equal to the second integer

if_icmpge   jump if the first integer is greater than or equal to the second integer

Eg:

    bipush 2
    iload_1
    if_cmpeq label ; jump to lable if local 1 is equal to 2
    return

  label:


## Comparison instructions

Note: 0 means false, and 1 means true

lcmp    long integer comparison

fcmpl   single-precision float comparison (-1 on NaN)

fcmpg   single-precision float comparison (1 on NaN)

dcmpl   double-precision double comparison (-1 on NaN)

dcmpg   double-precision double comparison (1 on NaN)

Eg:
  
  dload_1 ; load the double local
  dconst_0 ; push 0.0
  dcmpl

  ; what's left on the top of the stack:
  ;
  ; if local 1 == 0.0 then 0
  ; if local 1 < 0.0 then -1
  ; if local 1 > 0.0 then 1


## Unconditional branching instructions

goto      branch to address (8 bit offset)

goto_w    branch to address using wide offset (16 bit offset)

jsr       jump to subroutine

jsr_w     jump to subroutine using wide offset

ret       return from subroutine

ret_w     return from subroutine using wide offset



