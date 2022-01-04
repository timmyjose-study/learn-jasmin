; demo of returning an array of integers from a method.

.class public ReturnArrayOfInts
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static makeIntArray(I)[I
  .limit stack 3
  .limit locals 1

  iload_0
  newarray int
  areturn
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 4

  ; create the array
  iconst_5
  invokestatic ReturnArrayOfInts/makeIntArray(I)[I
  astore_1

  ; initialise the array

  aload_1
  iconst_0
  ldc 100
  iastore
  aload_1
  iconst_1
  ldc 200
  iastore
  aload_1
  iconst_2
  ldc 300
  iastore
  aload_1
  iconst_3
  ldc 400
  iastore
  aload_1
  iconst_4
  ldc 500
  iastore

  ; print the array

  iconst_0
  istore_3

loop:
  aload_1
  iload_3
  aload_1
  arraylength
  if_icmpge done
  iload_3
  iaload
  jsr printNum
  iinc 3 1
  goto loop

printNum:
  astore_2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(I)V
  ret 2

done:
  return
.end method
