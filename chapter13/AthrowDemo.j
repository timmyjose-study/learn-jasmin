; demo of athrow

.class public AthrowDemo
.super java/lang/Object

.method public <init>()V
  aload_0
  invokespecial java/lang/Object/<init>()V
  return
.end method

.method public throwException()V
  .limit stack 3
  .limit locals 1

  new java/lang/Exception
  dup
  ldc "something awful happened"
  invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
  athrow
.end method

.method public static main([Ljava/lang/String;)V
  .limit stack 3
  .limit locals 1

  new AthrowDemo
  dup
  invokespecial AthrowDemo/<init>()V
  invokevirtual AthrowDemo/throwException()V
  return
.end method

