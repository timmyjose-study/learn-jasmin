; demo of a single-dimensional array.

.class public SingleDimensionalArray
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 4
  .limit locals 4

  ; Integer[] a  = new Integer[10]

  bipush 10
  anewarray java/lang/Integer
  astore_1

  ; loop and assign each cell a value (1-10)
  bipush 10
  istore_2

storeLoop:
  aload_1
  iload_2
  iconst_1
  isub
  iload_2
  invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
  aastore ; a[i-1] = i
  iinc 2 -1 ; i -= 1
  iload_2 
  ifne  storeLoop

  ; print the array
  iconst_0
  istore_2

printLoop:
  aload_1
  iload_2
  aaload 
  jsr printNum
  iinc 2 1
  iload 2
  aload_1
  arraylength
  if_icmplt printLoop
  goto done

printNum:
  astore_3
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V
  ret 3

done:
  return
.end method