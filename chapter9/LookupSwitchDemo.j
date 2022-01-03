; demo of lookupswitch for lookup via key and then switching.
; This program reads in a number and then prints its value 
; in words, with a default value of "unknown" if not in the
; range [1, 5]

.class public LookupSwitchDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public lookupswitchDemo()V
  .limit stack 3
  .limit locals 4

  new java/util/Scanner
  dup
  getstatic java/lang/System/in Ljava/io/InputStream;
  invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
  astore_1

  jsr readNum
  lookupswitch 
    1 : R1
    2 : R2
    3 : R3
    4 : R4
    5 : R5
    default: R6

R1:
  ldc "One"
  jsr printNums
  goto cleanup

R2:
  ldc "Two"
  jsr printNums
  goto cleanup

R3:
  ldc "Three"
  jsr printNums
  goto cleanup

R4:
  ldc "Four"
  jsr printNums
  goto cleanup

R5:
  ldc "Five"
  jsr printNums
  goto cleanup

R6:
  ldc "Some number"
  jsr printNums

cleanup:
  aload_1
  invokevirtual java/util/Scanner/close()V
  return

readNum:
  astore_2
  aload_1
  invokevirtual java/util/Scanner/nextInt()I
  ret 2

printNums:
  astore_3
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 3
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 2

  new LookupSwitchDemo
  dup
  invokespecial LookupSwitchDemo/<init>()V
  astore_1

  aload_1
  invokevirtual LookupSwitchDemo/lookupswitchDemo()V
  return
.end method
