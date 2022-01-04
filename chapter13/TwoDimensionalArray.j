; demo of a two-dimensional array.

.class public TwoDimensionalArray
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 4
  .limit locals 7

  ; String[][] arr = new String[2][3]

  iconst_2
  anewarray [Ljava/lang/String;
  astore_1

  aload_1
  iconst_0
  bipush 3
  anewarray java/lang/String
  astore_2
  aload_2
  aastore ; row 0

  aload_1
  iconst_1
  bipush 3
  anewarray java/lang/String
  astore_3
  aload_3
  aastore ; row 1

  ; initialise the array

  ; row 0
  aload_2
  iconst_0
  ldc "0x0"
  aastore
  aload_2
  iconst_1
  ldc "0x1"
  aastore
  aload_2
  iconst_2
  ldc "0x2"
  aastore

  ; row 1
  aload_3
  iconst_0
  ldc "1x0"
  aastore
  aload_3
  iconst_1
  ldc "1x1"
  aastore
  aload_3
  iconst_2
  ldc "1x2"
  aastore

  ; display the matrix

  iconst_0
  istore 4 ; row index
  iconst_0
  istore 5 ; col index

next:
  aload_1
  iload 4
  aaload

  iload 5
  aaload
  jsr printStr
  iinc 5 1
  iload 5
  aload_2
  arraylength 
  if_icmplt next
  iconst_0
  istore 5
  iinc 4 1
  iload 4
  aload_1
  arraylength 
  if_icmplt next
  goto done

printStr:
  astore 6
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 6

done:
  return
.end method

