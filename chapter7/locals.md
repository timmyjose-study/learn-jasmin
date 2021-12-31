Pushing local variables onto the stack:

iload     retrieve integer from local variable

iload_<n> retrieve integer from local variable <n>

lload     retrieve long from local variable

lload_<n> retrieve long from local variable <n>

fload     retrieve float from local variable

fload_<n> retrieve float from local variable <n>

dload     retrieve double from local variable

dload_<n> retrieve double from local variable <n>

aload     retrieve object reference from local variable

aload_<n> retrieve object reference from local variable <n>


Popping stack values into local variables:

istore      pop and store integer in local variable

istore_<n>  pop and store integer in local variable <n>

lstore      pop and store long in local variable

lstore_<n>  pop and store long in local variable <n>

fstors      pop and store float in local variable

fstore_<n>  pop and store float in local variable <n>

dstore      pop and store double in local variable

dstore_<n>  pop and store double in local variable <n>

astore      pop and store object reference in local variable

astore_<n>  pop and store object reference in local variable <n>


Miscellaneous instructions:

iinc <n> <d>      increment integer in local variable <n> by <d>

wide      next instruction uses 16-bit index

Note: By default, each local variable instruction can only access 256 local variables (byte index). Using `wide`, the next instruction uses a 2byte index so that it can 
address upto 65536 local variables.

For instance:

iload 300

is not possible, but

wide
iload 300

works.