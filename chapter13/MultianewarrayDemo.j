; demo of multianewarray

.source MultianewarrayDemo.j
.class public MultianewarrayDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 5
  .limit locals 3

  ; String[2][3]
  iconst_2
  iconst_3
  multianewarray [[Ljava/lang/String; 2
  astore_1

  ; initialise it
  aload_1
  iconst_0
  aaload
  iconst_0
  ldc "0x0"
  aastore
  aload_1
  iconst_0
  aaload
  iconst_1
  ldc "0x1"
  aastore
  aload_1
  iconst_0
  aaload
  iconst_2
  ldc "0x2"
  aastore

  aload_1
  iconst_1
  aaload
  iconst_0
  ldc "1x0"
  aastore
  aload_1
  iconst_1
  aaload
  iconst_1
  ldc "1x1"
  aastore
  aload_1
  iconst_1
  aaload
  iconst_2
  ldc "1x2"
  aastore

  ; display it
  aload_1
  iconst_0
  aaload
  iconst_0
  aaload
  jsr printStr
  aload_1
  iconst_0
  aaload
  iconst_1
  aaload
  jsr printStr
  aload_1
  iconst_0
  aaload
  iconst_2
  aaload
  jsr printStr

  aload_1
  iconst_1
  aaload
  iconst_0
  aaload
  jsr printStr
  aload_1
  iconst_1
  aaload
  iconst_1
  aaload
  jsr printStr
  aload_1
  iconst_1
  aaload
  iconst_2
  aaload
  jsr printStr

  goto done
  
printStr:
  astore_2
  getstatic java/lang/System/out Ljava/io/PrintStream;
  swap
  invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
  ret 2

done:
  return
.end method




