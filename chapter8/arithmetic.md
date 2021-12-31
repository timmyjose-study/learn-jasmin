iadd      add two integers

ladd      add two longs

fadd      add two floats

dadd      add two doubles

isub      subtract two integers

lsub      subtract two longs

fsub      subtract two floats

dsub      subtract two doubles

imul      multiply two integers

lmul      multiply two longs

fmul      multiply two floats

dmul      multiply two doubles

idiv      divide two integers

ldiv      divide two longs

fdiv      divide two floats

ddiv      divide two doubles

irem      remainder of two integers

lrem      remainder of two longs

frem      remainder of two floats

drem      remainder of two doubles

Eg:
    bipush 10
    bipush 20
    iadd
    ; stack now contains 30


Unary operators:

ineg      negate an integer

lneg      negate a long

fneg      negate a float

dneg      negate a double

Eg:
  bipush 10
  ineg
  ; stack now contains -10


Bitwise operators:

ishl      integer shift left

ishr      integer shift right (sign fill)

iushr     integer shift right (zero fill)

lshl      long shift left

lshr      long shift right (sign fill)

lushr     long shift right (zero fill)

iand      integer bitwise and

land      long bitwise and

ior       integer bitwise or

lor       long bitwise or

ixor      integer bitwise xor

lxor      long bitwise xor

Eg:

  bipush 10
  iconst_1
  ishl
  ; stack now contains 20


Conversion operators:

i2l     integer to long

i2f     integer to float

i2d     integer to double

l2i     long to integer

l2f     long to float

l2d     long to double

f2i     float to integer

f2l     float to long

f2d     float to double

d2i     double to integer

d2l     double to long

d2f     double to float

i2b     integer to byte

i2c     integer to character

i2s     integer to short

Eg:
  
  ldc 1.5
  iload_1
  i2f
  fadd

Eg:

  ldc 1.7
  f2i
  ; stack now contains 1

  iconst_1
  i2d
  ; stack now contains 1.0 in double-precision

Eg:
  Note that i2b, i2c, and i2s actually produce intS, but the results are truncated to fit the destination type

  iload_1 ; suppose this is a short 
  iload_2 ; suppose this is a byte
  ; no conversion required since locals 1 and 2 are actually intS
  iadd
  i2s
  istore_1 ; local 1 is of type short

