nop     do nothing

pop     discard the top word on the stack ; word size in JVM is 32-bit or 64-bit, depending on the JVM

pop2    discard the top two words on the stack

dup     duplicate the top word on the stack

dup2    duplicate the two two words on the stack

dup_x1  duplicate the top word on the stack and insert beneath the second word ; tuck in Forth

dup2_x1 duplicate the top two words on the stack and insert beneath the third word ; 2tuck in Forth

dup_x2  duplicate the top word and insert beneath the third word

dup2_x2 duplicate the top two words and insert beneath the fourth word

swap    swap the top two words on the stack