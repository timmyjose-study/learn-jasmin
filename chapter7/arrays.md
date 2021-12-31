Creating arrays:

newarray      create an array of numbers or booleans

anewarray     create an array of objects

multianewarray    allocate multi-dimensional array


Retrieving values from arrays:

iaload      retrieve integer from array

laload      retrieve long from array

faload      retrieve float from array

daload      retrieve double from array

aaload      retrieve reference from array

baload      retrieve byte/boolean from array

caload      retrieve character from array

saload      retrieve short from array

Eg:

  aload 1
  bipush 5
  iaload

ie equivalent to 

  arr[5] ; assuming that the array reference is stored in local 1


Storing values in arrays:

iastore     store an integer in array

lastore     store long in array

fastore     store float in array

dastore     store double in array

aastore     store reference in array

bastore     store byte/boolean in array

castore     store character in array

sastore     store short in array

Eg:

  aload_1
  bipush 5
  bipush 3
  iastore

is equivalent to

  arr[5] := 3 ; assuming that arr is stored in local 1


